require'format'.setup {
    html = {{cmd = {"prettier -w"}}},
    css = {{cmd = {"prettier -w"}}},
    json = {{cmd = {"prettier -w"}}},
    javascript = {{cmd = {"prettier -w"}}},
    java = {{cmd = {"prettier -w"}}},
}

vim.cmd('autocmd BufWritePost * FormatWrite')
