---@diagnostic disable-next-line: undefined-global
local wdir = workingdir
package.path = package.path .. ";" .. wdir .. "/lib/?.lua"

local json = require("json")
local alvu = require("alvu")
local utils = require(wdir .. ".lib.utils")

function Writer(filedata)
    local pagesPath = wdir .. "pages/docs"
    local index = {}
    local files = alvu.files(pagesPath)

    for fileIndex = 1, #files do
        if not (files[fileIndex] == "_layout.html" or files[fileIndex] == "index.md")
        then
            local name = string.gsub(files[fileIndex], ".md", "")
            name = string.gsub(name, ".html", "")
            local title, _ = utils.normalize(name):lower()

            table.insert(index, {
                name = utils.totitlecase(title),
                slug = "docs/"..name
            })
        end
    end

    table.insert(index, 1, {
        name = "..",
        slug = "index"
    })

    local source_data = json.decode(filedata)

    local template = [[
<div class="container search-container">
    <div id="search"></div>
</div>
<header class="container">
<nav>
{{$baseurl:=.Meta.BaseURL}}
{{range .Data.index}}
<a href={{print $baseurl .slug}}>{{.name}}</a>
{{end}}
</nav>
</header>
<main class="container">
]]

    source_data.content = template .. "\n" .. source_data.content .. "</main>"
    source_data.data = {
        index = index
    }

    return json.encode(source_data)
end