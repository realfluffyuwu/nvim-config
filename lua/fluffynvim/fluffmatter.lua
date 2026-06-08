local fluffmatter = {}

local formatters = {
    lua = function()
        vim.lsp.buf.format()
    end,
    python = function()
        local filepath = vim.api.nvim_buf_get_name(0)
        vim.cmd("w | silent !black " .. filepath)
    end
}

function fluffmatter.format()
    local filetype = vim.bo.filetype

    -- If we have defined a Formatter for the Language run it
    -- otherwise default to Prettier
    if formatters[filetype] then
        formatters[filetype]()
    else
        vim.cmd("silent !prettier -w %")
    end
end

return fluffmatter
