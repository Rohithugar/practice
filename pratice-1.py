# message = 'Hello World'
# print(message[0:7])
# print(message.count('l'))
# print(message.find('World'))

# new = message.replace('World','Universe')
# print(new)

# greeting = 'Hello'
# name = 'Kevin'

# msg = greeting +" "+ name
# print(msg)

# # Using place orders to concatenate
# msg_1 = '{}, {}. Welcome!'.format(greeting, name)
# print(msg_1)

# # Using f-string
# print(f"{greeting} {name}. Welcome!")

# Integers and Floats
# num = 3
# print(type(num))

# Airthmetic operations:
# Addition : 3 + 2
# Substraction : 3 - 2
# Multiplication : 3 * 2
# Division : 3 / 2
# Floor division: 3 // 2
# Exponent : 3 ** 2
# print('Modulus :', 3 % 2)

# num = 2
# num += 2
# print(num)

# print(abs(-3))
# print(round(3.67))
# print(round(3.67, 1))

# Comparisons:
# Equal : 3 == 2
# Not Equal : 3 != 2
# Greater Than : 3 > 2
# Less Than : 3 < 2
# Greater or Equal : 3 >= 2
# Less or Equal : 3 <= 2

# Single equal(=) is assignment and double equal(==) is comparision

# LISTS

Courses = ['History','Math','Science','Political','CompSci']
Courses_2 = ['Arts', 'Education']

# Courses.append('Art')
# Courses.insert(2, 'Art')
# Courses.extend(Courses_2)
# Courses.remove('Math')
# Courses.pop()
# Courses.reverse()
# Courses.sort() -- Asc order
# Courses.sort(reverse=True) -- Desc order
# sorted(Courses) -- It dose'nt sort the list. 
# It give the sorted version of the list.
# nums = [1,2,5,4,3]
# print(sum(nums))
# print(Courses.index('Math'))
# print('Art' in Courses)

# for index, Courses in enumerate(Courses, start=1):
#     print(index, Courses)

course_str = ', '.join(Courses)
print(course_str)