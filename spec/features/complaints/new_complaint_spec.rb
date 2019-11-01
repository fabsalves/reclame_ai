require "rails_helper"

RSpec.feature 'New complaint', type: :feature do
  before { visit root_path }

  scenario 'Customer creates a new complaint' do
    expect(Complaint.count).to eq(0)
    expect(Customer.count).to eq(0)

    fill_in 'Name',  with: 'Customer name'
    fill_in 'Email', with: 'customer@email.com'

    fill_in 'Order', with: '#ASDBB'
    fill_in 'Delivery ZipCode', with: '61814284'
    fill_in 'Description', with: 'My problem description'

    click_button 'Create Complaint'

    expect(Complaint.count).to eq(1)
    expect(Customer.count).to eq(1)
    expect(page).to have_text('Successfully created.')
  end

  context 'failures' do
    scenario 'when name is blank' do
      fill_in 'Email', with: 'customer@email.com'

      fill_in 'Order', with: '#ASDBB'
      fill_in 'Delivery ZipCode', with: '61814284'
      fill_in 'Description', with: 'My problem description'

      click_button 'Create Complaint'

      expect(Complaint.count).to eq(0)
      expect(Customer.count).to eq(0)
      expect(page).to have_text('Failure, check all fields please.')
    end

    scenario 'when email is blank' do
      fill_in 'Name', with: 'Customer Name'

      fill_in 'Order', with: '#ASDBB'
      fill_in 'Delivery ZipCode', with: '61814284'
      fill_in 'Description', with: 'My problem description'

      click_button 'Create Complaint'

      expect(page).to have_text('Failure, check all fields please.')
    end

    scenario 'when order id is blank' do
      fill_in 'Name',  with: 'Customer name'
      fill_in 'Phone', with: '85 9 9999-9999'
      fill_in 'Email', with: 'customer@email.com'
  
      fill_in 'Delivery ZipCode', with: '61814284'
      fill_in 'Description', with: 'My problem description'
  
      click_button 'Create Complaint'

      expect(Complaint.count).to eq(0)
      expect(Customer.count).to eq(0)
      expect(page).to have_text('Failure, check all fields please.')
    end

    scenario 'when zipcode is blank' do
      fill_in 'Name',  with: 'Customer name'
      fill_in 'Phone', with: '85 9 9999-9999'
      fill_in 'Email', with: 'customer@email.com'
  
      fill_in 'Order', with: '#ASDBB'
      fill_in 'Description', with: 'My problem description'
  
      click_button 'Create Complaint'

      expect(Complaint.count).to eq(0)
      expect(Customer.count).to eq(0)
      expect(page).to have_text('Failure, check all fields please.')
    end

    scenario 'when description is blank' do
      fill_in 'Name',  with: 'Customer name'
      fill_in 'Phone', with: '85 9 9999-9999'
      fill_in 'Email', with: 'customer@email.com'

      fill_in 'Order', with: '#ASDBB'
      fill_in 'Delivery ZipCode', with: '61814284'

      click_button 'Create Complaint'

      expect(Complaint.count).to eq(0)
      expect(Customer.count).to eq(0)
      expect(page).to have_text('Failure, check all fields please.')
    end
  end
end
