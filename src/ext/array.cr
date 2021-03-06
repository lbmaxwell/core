require "db"

class Array(T)
  # Map `#from_rs` to `T`.
  def self.from_rs(rs : DB::ResultSet)
    T.from_rs(rs)
  end

  # Map `Core::Schema.table_name` to `T`.
  def self.table_name
    T.table_name
  end

  # Map `Core::Schema.primary_key` to `T`.
  def self.primary_key
    T.primary_key
  end

  # Map `Core::Schema.reference_key` to `T`.
  def self.reference_key(ref)
    T.reference_key(ref)
  end

  # Map `Core::Schema.reference_foreign_key` to `T`.
  def self.reference_foreign_key(ref)
    T.reference_foreign_key(ref)
  end

  # Map `Core::Schema.reference_class` to `T`.
  def self.reference_class(ref)
    T.reference_class(ref)
  end
end
