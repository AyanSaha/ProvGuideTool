class ProvGuidesDatatable < AjaxDatatablesRails::Base

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= %w[ProvGuideTemp.dialplan ProvGuideTemp.locality ProvGuideTemp.vma]
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= %w[ProvGuideTemp.sub_profile_id ProvGuideTemp.created_by ProvGuideTemp.last_update_by]
  end


   
  private

  def data
    records.map do |record|
      [
        record.dialplan,
        record.clli,
        record.npa,
        record.rate_center,
        record.county,
        record.locality,
        record.sub_profile_id,
        record.vma,
        record.created_by,
        record.last_update_by,
        record.division_id,
        record.reference1,
        record.serviceable,
        record.tgn_911,
        record.state,
        record.suspend_id,
        record.vma_customer,
        record.routing_indicator_rule,
        record.poi,
        record.vma_99,
        record.lrn,
        record.seasonal_id,
        record.i2,
        record.esrn,
        record.lata,
        record.spid,
        record.nat_num_esrn,
        record.created_at,
        record.updated_at
      ]
    end
  end

  def get_raw_records
    ProvGuideTemp.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
