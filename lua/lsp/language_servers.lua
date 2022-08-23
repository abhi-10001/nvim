--   -- Setup lspconfig.
--   local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--   -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--   require'lspconfig'.html.setup {
    --     capabilities = capabilities,
    --   }
    --   require'lspconfig'.cssls.setup {
        --     capabilities = capabilities,
        --   }
        --   require'lspconfig'.tsserver.setup {
            --     capabilities = capabilities,
            --   }
            --   require'lspconfig'.pylsp.setup {
                --     capabilities = capabilities,
                --   }
                --   require'lspconfig'.jdtls.setup {
                    --     capabilities = capabilities,
                    --   }

                    --  require'lspconfig'.sumneko_lua.setup {
                        local lsp_installer = require('nvim-lsp-installer')

                        lsp_installer.on_server_ready(function(server)
                            local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

                            local opts = {capabilities = capabilities}
                            if server.name == "sumneko_lua" then 
                                opts = vim.tbl_deep_extend("force",{
                                    settings = {
                                        Lua = {
                                            runtime = {
                                                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                                                version = 'LuaJIT',
                                            },
                                            diagnostics = {
                                                -- Get the language server to recognize the `vim` global
                                                globals = {'vim'},
                                            },
                                            workspace = {
                                                -- Make the server aware of Neovim runtime files
                                                library = vim.api.nvim_get_runtime_file("", true),
                                                checkThirdParty = false
                                            },
                                            -- Do not send telemetry data containing a randomized but unique identifier 
                                            telemetry = {
                                                enable = false,
                                            },
                                        },

                                    }, 
                                }, opts)
                            end 
                            server:setup(opts)
                        end)


