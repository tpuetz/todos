require 'spec_helper'

describe User, '#todos' do
  it 'returns users email' do
  	create(:todo, description: 'Buy some eggs', owner_email: 'person@example.com')
  	create(:todo, description: 'Buy some milk', owner_email: 'other_person@example.com')
  	user = User.new('person@example.com')
  	expect(user.todos.length).to eq 1
  	expect(user.todos.first.description).to eq 'Buy some eggs'  	
  end
end

describe User, '#email' do
  it 'returns the email that user was instantiated with' do
  	user = User.new('person@example.com')
  	expect(user.email).to eq 'person@example.com'
  end
end
