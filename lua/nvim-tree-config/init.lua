vim.g.nvim_tree_width = 25
require'nvim-tree'.setup{
   auto_reload_on_write = true,
    create_in_closed_folder = false,
    disable_netrw = false,
     renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            none = " ",
          },
      },
  }
}
