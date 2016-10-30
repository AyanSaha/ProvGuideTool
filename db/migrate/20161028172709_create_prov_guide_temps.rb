class CreateProvGuideTemps < ActiveRecord::Migration[5.0]
  def change
    create_table :prov_guide_temps do |t|
      t.string :dialplan
      t.string :clli
      t.string :npa
      t.string :rate_center
      t.string :locality
      t.string :county
      t.string :sub_profile_id
      t.string :vma
      t.string :created_by
      t.string :last_update_by
      t.string :division_id
      t.string :reference1
      t.string :serviceable
      t.string :tgn_911
      t.string :state
      t.string :suspend_id
      t.string :vma_customer
      t.string :routing_indicator_rule
      t.string :poi
      t.string :vma_99
      t.string :lrn
      t.string :seasonal_id
      t.string :i2
      t.string :esrn
      t.string :lata
      t.string :spid
      t.string :nat_num_esrn

      t.timestamps
    end
    
  end
end
