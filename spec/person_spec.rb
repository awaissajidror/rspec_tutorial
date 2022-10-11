# frozen_string_literal: true

class Person

  def name
    'Callie Trop'
  end

  def age
    19
  end

  def weight
    '55 KG'
  end

end

describe Person do

  person = Person.new

  context 'When testing the Person class' do

    it "should say 'Callie Trop' when we call the name method" do
      person_name = person.name
      expect(person_name).to eq 'Callie Trop'
    end

  end

  context 'When testing the Person class' do

    it "should say '19' when we call the age method" do
      person_age = person.age
      expect(person_age).to eq 19
    end

  end

  context 'When testing the Person class' do

    it "should say '55 KG' when we call weight method" do
      person_weight = person.weight
      expect(person_weight).to eq '55 KG'
    end

  end

end
