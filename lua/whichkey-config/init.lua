local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
    local float = Terminal:new({direction = "float"})
    return float:toggle()
end
local toggle_lazygit = function()
    local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
    return lazygit:toggle()
end




local mappings = {
    q = {":q<cr>", "Quit"},
    Q = {":wq<cr>", "Save and Quit"},
    w = {":w<cr>", "Save"},
    x = {":bdelete<cr>", "Close"},
    f = {":Telescope find_files<cr>", "Telescope Find Files"},
    r = {":Telescope live_grep<cr>", "Telescope Live Grep"},
    -- l = { 
    --     name = "LSP",
    --     i = {":LspInfo<cr>", "Connected Language Servers"},
    --     A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    --     R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    --     l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
    --     D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    --     r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    --     a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    --     e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    --     q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
    -- },
    t = {
        t = {":ToggleTerm<cr>", "Split Below"}, f = {toggle_float, "Floating Terminal"}, l = {toggle_lazygit, "LazyGit "}},
    l = {
        name = "LSP",
        i = {":LspInfo<cr>", "Connected Language Servers"},
        k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
        K = {"<cmd>lua vim.lsp.buf.hover()<cr>", "Hover Commands"},
        w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Remove Workspace Folder"},
        W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
        l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', "List Workspace Folder"},
        t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
        d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
        D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
        r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References" },
        R = {'<cmd>lua vim.lsp.buf.rename<cr>', "Rename" },
        a = {'<cmd>lua vim.lsp.buf.code_action()<cr>', "Code Action" },
        e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics<cr>', "Show Line Diagnostics" },
        n = {'<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', "Go To Next Diagnostic" },
        N = {'<cmd>lua vim.lsp.diagnostic.goto_prev<cr>', "Go To Previous Diagnostic" },
    }
}
    local opts = {prefix = '<leader>'}
    wk.register(mappings, opts)
