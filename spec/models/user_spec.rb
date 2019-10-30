describe User do
  subject { User.new(email: 'user@example.com') }

  it { should respond_to(:email) }

  it '#email returns a string' do
    expect(subject.email).to match 'user@example.com'
  end
end
