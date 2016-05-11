module Kami
  class Document
    attr_reader :document_id, :session_view

    def initialize(client, document_id)
      @client = client
      @document_id = document_id
    end

    def status
      @status ||= @client.get("documents/#{@document_id}")
    end

    def create_export(type: 'annotation')
      payload = {
        document_identifier: @document_id,
        export_type: type
      }
      @export = @client.post('exports', payload)
    end

    def export_file(id = nil)
      export_id = id
      export_id ||= @export['id'] if @export.is_a?(Hash)

      @client.get("exports/#{export_id}")
    end

    def delete
      @client.delete("documents/#{@document_id}")
    end

    def comments
      @client.get("documents/#{@document_id}/comments")
    end

    def session_view
      return unless @document_id

      payload = {
        document_identifier: @document_id,
        # We don't have user accounts in this sample app, but in a real one you'd include the user ID here.
        user: {
          name: 'Test User',
          user_id: 1
        },
        expires_at: (Time.now + (60 * 60))
      }

      @session_view = @client.post('sessions', payload)
    end

    def session_view_url
      session_view['viewer_url']
    end
  end
end
