require 'rfm/utilities/base'
describe Rfm::Base do
	subject {Class.new(Rfm::Base){config :base_test}}

	#   before(:each) do
	#     @record = Rfm::Record.allocate
	#     @layout = mock(Rfm::Layout)
	#   end


	describe '.inherited' do
		it("adds class to Rfm::Factory@models"){Rfm::Factory.models.include?(subject).should be_true}
		it("sets class @config with :parent and other config options") do
			subject.config_all[:parent].should == 'Rfm::Base'
			subject.config_all[:layout].should == 'testlay1'
		end
	end
	
	describe '.layout' do
		it("retrieves or creates layout object"){subject.layout.name.should == 'testlay1'}
	end
	
	
	# describe '.find'
	# 
	# describe '.create_from_instance'
	# 
	# describe '#initialize'
	# 
	# describe '#new_record?'
	# 
	# describe '#reload'
	# 
	# describe '#update_attributes'
	# 
	# describe '#update_attributes!'
	# 
	# describe '#save!'
	# 
	# describe '#save'
	# 
	# describe '#destroy'
	# 
	# describe '#save_if_not_modified'
	# 
	# describe '#callback_deadend'
	# 
	# describe '#create'
	# 
	# describe '#update'
	# 
	# describe '#merge_rfm_result'
	

	describe 'Functional Tests -' do
		describe 'Basic CRUD manoevers' do
			before(:all){subject {MemoXml}}
			it 'creates a new record with data'
			it 'adds more data to the record'
			it 'saves the record'
			it 'searches for the record by id'
			it 'uses #update_attributes! to modify data'
			it 'searches for several records and loops thru to find this one'
		end
	end
  
  
end # Rfm::Base