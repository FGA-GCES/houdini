# frozen_string_literal: true

# License: AGPL-3.0-or-later WITH WTO-AP-3.0-or-later
# Full license explanation at https://github.com/houdiniproject/houdini/blob/main/LICENSE
class CreateAmountManagement < ActiveRecord::Migration[6.1]
  def change
    create_table :amount_managements do |t|

      t.timestamps
    end
  end
end
