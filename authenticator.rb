users = [
            {username: 'azhelle16', password: 'password1'},
            {username: 'sweet_biotch', password: 'password2'},
            {username: 'eizhy24', password: 'password3'},
            {username: 'ken_fanatic', password: 'password4'},
            {username: 'pretty_biotch', password: 'password5'},
        ]

puts
20.times { print "-" }
puts
puts "WELCOME TO THE AUTHENTICATOR"
20.times { print "-" }
puts

key = ""
attempts = 0
found = 0

while key != 'n' && attempts != 3 do
    print "\nEnter Username: "
    uname = gets.chomp
    print "\nEnter Password: "
    pass = gets.chomp
    
    users.each do |u|
        if u[:username] === uname && u[:password] === pass
            puts "\nCredentials are correct. You may proceed.\n"
            found = 1
        end
    end

    if found === 0
        puts "\nIncorrect credentials. Please check information.\n"
    end
    attempts += 1
    print "\nPress n to QUIT or any key to continue: "
    key = gets.chomp  
    found = 0
end

if key == 'n'
    puts "\nThank you for using The Authenticator. Have A Nice Day!\n\n"
elsif attempts == 3
    puts "\nYou already reached the limit number of tries. Thank you for using The Authenticator. Have A Nice Day!\n\n"
end