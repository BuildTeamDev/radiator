require 'test_helper'

module Radiator
  class AccountByKeyApiTest < Radiator::Test
    def setup
      @api = Radiator::AccountByKeyApi.new
    end

    def test_method_missing
      assert_raises NoMethodError do
        @api.bogus
      end
    end

    def test_all_respond_to
      @api.method_names.each do |key|
        assert @api.respond_to?(key), "expect rpc respond to #{key}"
      end
    end

    def test_all_methods
      VCR.use_cassette('all_methods', record: VCR_RECORD_MODE) do
        @api.method_names.each do |key|
          assert @api.send key
        end
      end
    end

    def test_get_key_references
      VCR.use_cassette('get_key_references', record: VCR_RECORD_MODE) do
        keys = ['STM71f6yWztimJuREVyyMXNqAVbx1FzPVW6LLXNoQ35dHwKuszmHX']
        @api.get_key_references(keys) do |account_names|
          assert_equal Hashie::Array, account_names.class, account_names.inspect
        end
      end
    end
  end
end
