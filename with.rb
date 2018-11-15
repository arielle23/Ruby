module Kernel
  def with(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end

require 'test/unit'

class TestWith < Test::Unit::TestCase
  class Resource
    def dispose
      @dispose = true
    end
    def disposed?
      @dispose
    end
  end

  def test_disposes_of_resouces
    r = Resource.new
    with(r) {}
    assert r.disposed?
  end

  def test_dispose_of_resources_in_case_of_exception
    r = Resource.new
    assert_raises(Exception){
      with(r){
        raise Exception
      }
    }
    assert r.disposed?
  end
end
