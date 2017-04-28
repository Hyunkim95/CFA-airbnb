def validPhoneNumber(phoneNumber)
    if phoneNumber[0] == "(" && phoneNumber[4] == ")" && phoneNumber[5] == " " && phoneNumber[9] == "-" && phoneNumber.length == 14
        return true
    else
        return false
    end
end
