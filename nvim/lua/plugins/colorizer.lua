return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("colorizer").setup({
      filetypes = {
        "*", -- Highlight colors in all filetypes
        css = { css = true },
        html = { names = true },
      },
      user_default_options = {
        RGB = true,           -- #RGB hex codes
        RRGGBB = true,        -- #RRGGBB hex codes
        names = true,         -- "Blue" or "red" etc.
        RRGGBBAA = true,      -- #RRGGBBAA hex codes
        rgb_fn = true,        -- CSS rgb() and rgba() functions
        hsl_fn = true,        -- CSS hsl() and hsla() functions
        tailwind = true,      -- highlight tailwind colors
        mode = "background",  -- "background" | "foreground" | "virtualtext"
      },
    })
  end,
}
