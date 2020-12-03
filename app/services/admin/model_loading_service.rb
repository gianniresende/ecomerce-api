module Admin
  class ModelLoadingService
    attr_reader :records, :pagination

    def initialize(searchable_model, params = {})
      @searchable_model = searchable_model
      @params = params || {}
      @records = []
      @pagination = { page: @params[:page].to_i, lenght: @param[:lenght].to_i }
    end

    def call
      fix_pagination_values
      filtered = @searchable_model.search_by_name(@params.dig(:search, :name))  

      total_pages = (filtered.count / @pagination[:length].to_f).ceil #method ceil around
      @pagination.merge!(total: filtered.count, total_pages: total_pages)
    end

    def fix_pagination_values
      @pagination[:page] = @searchable_model.model::DEFAULT_PAGE if @pagination[:page] <= 0
      @pagination[:length] = @searchable_model.model::MAX_PER_PAGE if @pagination[:length] <= 0
    end
  end
end