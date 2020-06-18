def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def favourite_snack(person, snack)
  if (person[:favourites][:snacks][0] == snack)
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends].push(friend)
  p person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  p person[:friends].length
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_amount(person1, person2, amount)
  if (person1[:monies] > amount)
    person2[:monies] += amount
    person1[:monies] -= amount
  else
    return "Can't do this"
  end
end

def favourite_food(people)
  snacks = []
  for person in people
    for snack in person[:favourites][:snacks]
      snacks.push(snack)
    end
  end
  return snacks
end

def has_no_friends(people)
  no_friends = []
  for person in people
    if (person[:friends] == [])
      no_friends.push(person)
    end
  end
  return no_friends
end