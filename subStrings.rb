#count substrings in a string in relation to a dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    results = Hash.new #creating a new hash named results
    string = string.split #string is in an array now
    dictionary.each do |word| #iterate dictionary words
        string.each do |stringitem| #iterate splited string words
            if(stringitem.downcase.include?(word))
                if(results[word] == nil)
                    results[word] = 1 #we need to put 1 as a value since you can't +1 a nil
                else
                    results[word] += 1
                end
            end
        end
    end
    print results
end


substrings("Howdy partner, sit down! How's it going?",dictionary)
#{"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}