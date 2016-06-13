
def pet_shop_name(pet_shop)
  return pet_shop[:name]

end

def total_cash(pet_shop)
  return pet_shop[:admin] [:total_cash]

end

def add_or_remove_cash (pet_shop, number)
  pet_shop [:admin] [:total_cash] += number
end 

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop [:admin] [:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pet_breed = [] 
  for pet in pet_shop[:pets]
    pet_breed << pet if pet[:breed] == breed
  end
    return pet_breed
end

def find_pet_by_name(pet_shop, name)
  
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
    
    for pet in pet_shop[:pets]
      pet.delete(:name)
      return pet if pet[:name] == name
    end
    return nil
end

# def add_pet_to_stock(pet_shop, new_pet)
  
#   return pet_shop[:pets].count + 1.to_i

  # words.each { |word| wf[word] += 1 }

# end

def customer_pet_count(customers)
return customers[:pets].count
end

def add_pet_to_customer(customer, pets)
  for pets in customer[:pets]
    return pets
  end
return pets
end
