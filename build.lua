module = "letterswitharrows"

unpackfiles = {"*.dtx"}
ctanreadme = "README.txt"

function update_tag(file,content,tagname,tagdate)
    if string.match(file, "%.dtx$") then
        return string.gsub(content,
            "\n%% \\date{Released %d%d%d%d[-/]%d%d[-/]%d%d}\n",
            "\n%% \\date{Released " .. tagdate .. "}\n")
    end
    return content
end
