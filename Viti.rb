#Created By Ankur Pandey
#github : AnkDos


puts "Hello World"
puts "welcome to your assistant Viti"
puts "Enter the command: "

#The User Input


inp=String(gets.chomp)
du=inp.split(" ")
first=inp.slice du[0]
su=inp.sub(du[0],"")

#The User Input


#---------------FOR WEB ---------------------------
def web(command) 
comm=command.split(" ")
work=false

comm.each{
    |x,y|
    if x.downcase.include? "www."
    system "xdg-open https://#{x}"
    puts "visit #{x}"
    work=true
    end
    }
    #puts work
    if work==false
    system "xdg-open https://www.google.com/search?q='#{command}'"
    end
    end
   #---------------FOR WEB ---------------------------
    
    
    #----------FOR SYSTEM----------------
    def systems(commands)
    len=commands.length
    co =commands.split(" ")

    co.each{ |x| 
    if x=="upgrade"
    system "apt-get upgrade"
    end
    if x=="update"
    system "apt-get update"
    end
    }
    
    end

    #-------------FOR SYSTEM
    
    
#calling the web command    
if first=="witi" || first=="witi " || first=="Witi " || first=="Witi"
    web(su)
end    
#calling the web command

#calling the system command    
if first=="siti" || first=="siti " || first=="Siti " || first=="Siti"
    systems(su)
end    
#calling the system command
