module Spree
  module Admin
    class EnquiriesController < ResourceController
      def index
        respond_to do |f|
          f.html
          f.xlsx { render xlsx: 'index', filename: 'enquiries.xlsx' }
        end
      end

      private

      def collection
        return @collection if @collection.present?
        # params[:q] can be blank upon pagination
        params[:q] = {} if params[:q].blank?
        params[:per_page] ||= Spree::Config.admin_properties_per_page
        @show_only_active = params[:q][:show_only_active] == '1'
        params[:q][:end_date_gt] = Date.today if @show_only_active

        @collection = super
        @search = @collection.ransack(params[:q])
        @collection = @search.result
                             .page(params[:page])
                             .per(params[:per_page])
      end
    end
  end
end
