-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "astrodark",
    folding = {
      -- whether a buffer should have folding can be true/false for global enable/disable or fun(bufnr:integer):boolean
      enabled = function(bufnr) return require("astrocore.buffer").is_valid(bufnr) end,
      -- a priority list of fold methods to try using, available methods are "lsp", "treesitter", and "indent"
      methods = { "lsp", "treesitter", "indent" },
    },

    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    icons = {
      GitAdd = "",
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
    text_icons = {
      GitAdd = "[+]",
    },
    status = {
      -- Configure attributes of components defined in the `status` API. Check the AstroNvim documentation for a complete list of color names, this applies to colors that have `_fg` and/or `_bg` names with the suffix removed (ex. `git_branch_fg` as attributes from `git_branch`).
      attributes = {
        git_branch = { bold = true },
      },
      -- Configure colors of components defined in the `status` API. Check the AstroNvim documentation for a complete list of color names.
      colors = {
        git_branch_fg = "#ABCDEF",
      },
      -- Configure which icons that are highlighted based on context
      icon_highlights = {
        -- enable or disable breadcrumb icon highlighting
        breadcrumbs = false,
        -- Enable or disable the highlighting of filetype icons both in the statusline and tabline
        file_icon = {
          tabline = function(self) return self.is_active or self.is_visible end,
          statusline = true,
        },
      },
      -- Configure characters used as separators for various elements
      separators = {
        none = { "", "" },
        left = { "", "  " },
        right = { "  ", "" },
        center = { "  ", "  " },
        tab = { "", "" },
        breadcrumbs = "  ",
        path = "  ",
      },
      -- Configure enabling/disabling of winbar
      winbar = {
        enabled = { -- whitelist buffer patterns
          filetype = { "gitsigns.blame" },
        },
        disabled = { -- blacklist buffer patterns
          buftype = { "nofile", "terminal" },
        },
      },
    },
  },
}
