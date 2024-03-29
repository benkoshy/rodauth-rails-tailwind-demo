class CreateRodauthOtpSmsCodesRecoveryCodes < ActiveRecord::Migration[7.0]
  def change
    # Used by the otp feature
    create_table :account_otp_keys do |t|
      t.foreign_key :accounts, column: :id
      t.string :key, null: false
      t.integer :num_failures, null: false, default: 0
      t.datetime :last_use, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end

    # Used by the sms codes feature
    create_table :account_sms_codes do |t|
      t.foreign_key :accounts, column: :id
      t.string :phone_number, null: false
      t.integer :num_failures
      t.string :code
      t.datetime :code_issued_at, null: false, default: -> { "CURRENT_TIMESTAMP" }
    end

    # Used by the recovery codes feature
    create_table :account_recovery_codes, primary_key: [:id, :code] do |t|
      t.column :id, :bigint
      t.foreign_key :accounts, column: :id
      t.string :code
    end
  end
end
