require 'spec_helper'

describe EasyPasswords do
	it "should return a random password" do
		password = EasyPasswords.generate
    debugger
		password.should_not be_nil
		password.should_not be_empty
		password.should be_kind_of(String)
		password.length.should be_within(7).of(10)
	end

	it "should return a short random password when given a length of 5" do
		password = EasyPasswords.generate 5
		password.should_not be_nil
		password.should_not be_empty
		password.should be_kind_of(String)
		password.length.should be_within(3).of(5)
	end

	it "should return a longer random password when given a max length of 12" do
		password = EasyPasswords.generate 12
		password.should_not be_nil
		password.should_not be_empty
		password.should be_kind_of(String)
		password.length.should be_within(9).of(12)
	end

	it "should return a EasyPasswords::Generator object when EasyPasswords.new is called" do
		obj = EasyPasswords.new
		obj.should_not be_nil
		obj.should be_an_instance_of(EasyPasswords::Generator)
	end
end

describe EasyPasswords::Generator do
	it "should return a random password" do
		password = EasyPasswords::Generator.new.generate
		password.should_not be_nil
		password.should_not be_empty
		password.should be_kind_of(String)
		password.length.should be_within(5).of(15)
	end

	it "should raise error when given a length of 1" do
		expect {EasyPasswords::Generator.new.generate 1}.to raise_error
	end

	it "should return a longer random password when given a length of 5" do
		password = EasyPasswords::Generator.new.generate 5
		password.should_not be_nil
		password.should_not be_empty
		password.should be_kind_of(String)
		password.length.should be_within(3).of(5)
	end
end
