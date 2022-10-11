# frozen_string_literal: true

require 'spec_helper'

# Simple Person Class
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

  def male
    true
  end

  def female
    false
  end

  def obj
    {
      age: 27,
      gender: true,
      weight: '60 KG',
      name: 'Testing User'
    }
  end

  def arr_of_objs
    [{
       age: 27,
       gender: true,
       weight: '60 KG',
       name: 'Testing User'
     },
     {
       age: 27,
       gender: true,
       weight: '60 KG',
       name: 'Testing User'
     }]
  end

end

describe Person do
  before(:example) do
    @person = Person.new
  end

  context 'When testing the Person class' do

    it "should say 'Callie Trop' when we call the name method" do
      person_name = @person.name
      expect(person_name).to eql 'Callie Trop'
    end

  end

  context 'When testing the Person class' do

    it "should say '19' when we call the age method" do
      person_age = @person.age
      expect(person_age).to eql 19
    end

  end

  context 'When testing the Person class' do

    it "should say '55 KG' when we call weight method" do
      person_weight = @person.weight
      expect(person_weight).to eql '55 KG'
    end

  end

  context 'When testing the Person class' do

    it 'should return true for male gender' do
      person_gender = @person.male
      # expect(person_gender).to eql true
      expect(person_gender).to be_truthy
    end

  end

  context 'When testing the Person class' do

    it 'should return false for female gender' do
      person_gender = @person.female
      # expect(person_gender).to eql false
      expect(person_gender).not_to be_truthy
    end

  end

  context 'When testing the Person class' do

    it 'should return user object' do
      person_object = @person.obj
      expect(person_object.is_a?(Hash)).to be_truthy
    end

  end

  context 'When testing the Person class' do

    it 'should return user object' do
      persons_objs_array = @person.arr_of_objs
      expect(persons_objs_array.is_a?(Array)).to be_truthy
    end

  end

end
