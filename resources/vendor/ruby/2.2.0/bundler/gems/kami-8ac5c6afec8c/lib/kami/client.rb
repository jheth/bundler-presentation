module Kami
  class Client
    HOSTNAME = 'api.notablepdf.com'.freeze

    def initialize(key)
      @kami_api_key = key
    end

    def documents
      response = get('documents')
      response['documents']
    end

    def document(id)
      Kami::Document.new(self, id)
    end

    def upload(name: nil, document_url: nil, file: nil)
      if document_url
        payload = { name: name, document_url: document_url }
      elsif file
        payload = { name: name, document: File.open(file, 'rb'), multipart: true }
      end
      raise 'Must provide document_url or file' if payload.nil?

      post('documents', payload)
    end

    def delete_document(document_id)
      delete("documents/#{document_id}")
    end

    def get(path)
      response = RestClient.get(url(path), request_headers)
      JSON[response]
    end

    def post(path, payload)
      data = payload[:multipart] ? payload : payload.to_json

      response = RestClient.post(url(path), data, request_headers)
      if data.is_a?(Hash)
        response
      else
        JSON[response]
      end
    end

    def delete(path)
      RestClient.delete(url(path), request_headers)
    end

    def url(path)
      %(https://#{HOSTNAME}/embed/#{path})
    end

    def request_headers
      {
        content_type: 'application/json',
        authorization: "Token #{@kami_api_key}"
      }
    end
  end
end
