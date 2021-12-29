class AddAasmStateToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :aasm_state, :string
  end
end
