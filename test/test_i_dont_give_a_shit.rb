$:.unshift File.join(File.dirname(__FILE__),'..','..','lib')

require "test/unit"
require "i_dont_give_a_shit"

class TestIDontGiveAShit < Test::Unit::TestCase

  def test_some_wired_stuff
    assert_equal(nil.send(:' ?'), nil)
    assert_equal(nil.blow?(nil).up?(nil, nil){}.now?(0,1,3), nil)
  end
  
  def test_nil_check_still_works
    assert_equal(nil.nil?, true)
    assert_equal(''.nil?, false)
  end

  def test_method_with_questionmark_does_not_blow_up
    assert_raise(NoMethodError) { nil.blowup }
    nil.blowup?
  end

  def test_chained_method_with_questionmark_does_not_blow_up
    assert_raise(NoMethodError) { nil.blowup?.up?.now }
    nil.blowup?.up?.now?
  end

  def test_call_for_tosomething_works
    assert_equal("", nil.to_s)
    assert_equal('', nil.is_it_empty?.to_s)
    assert_equal(0, nil.is_it_zeor?.to_i)
  end

  def test_call_with_block_success_does_not_blow_up
    nil.some?.block?{puts 'hi'}
    nil.some?('a','b','c').block?{puts 'hi'}
  end

  class Blow
    def up
      'NOT!'
    end
    def not
      nil
    end
  end

  def test_call_for_existing_methods_works
    assert_equal('NOT!', Blow.new.up?.to_s)
    assert_equal('', Blow.new?.not?.to_s)
  end

end