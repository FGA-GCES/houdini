# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE
class CreateAmount < ActiveRecord::Migration[6.1]
  def change
    create_table :amounts do |t|
      t.integer :amount
      t.string :currency

      t.timestamps
    end
  end
end
