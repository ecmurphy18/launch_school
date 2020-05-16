def prompt(message)
  puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator!")
  prompt("-------------------------------")
  prompt("What is the loan amount?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  prompt("What is the apr (as percentage)?")

  apr = ''
  loop do
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration (in years)?")

  duration = ''
  loop do
    duration = gets.chomp

    if duration.empty? || duration.to_i < 0
      prompt("Please enter a valid number.")
    else
      break
    end
  end

  # p = loan amount
  p = loan_amount.to_f
  # j = monthly interest rate
  j = apr.to_f / 100 / 12
  # n = loan duration in months
  n = duration.to_i * 12
  # m = monthly payment
  m = p * (j / (1 - (1 + j)**(-n)))

  puts "Your monthly payment is £#{format('%02.2f', m)}"

  prompt("Another calculation?")
  answer = gets.chomp

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
