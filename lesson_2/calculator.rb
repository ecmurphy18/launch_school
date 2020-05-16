# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  # num.to_i != 0
  Integer(num) rescue false
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name: ")
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}")

loop do
  number1 = ''

  loop do
    prompt("Can I have the first number?")
    number1 = gets.to_i
    if valid_number?(number1)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("Can I have the second number?")
    number2 = gets.to_i
    if valid_number?(number2)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
  Which operation would you like to perform?
        1) Add
        2) Subtract
        3) Multiply
        4) Divide
  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3,4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is: #{result}")
  prompt("Do you want to perform another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
