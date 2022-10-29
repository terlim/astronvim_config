return function()
  require("nightfox").setup {
    options = {
      transparent = false, -- Disable setting background
      styles = { -- Style to be applied to different syntax groups
        comments = "italic", -- Value is any valid attr-list value `:help attr-list`
        conditionals = "italic",
        constants = "italic",
        functions = "italic,bold",
        keywords = "bold",
      },
      inverse = { -- Inverse highlight for different types
        match_paren = false,
        visual = true,
        search = false,
      },
      modules = {
        -- ...
      },
    },
    groups = {
      -- ...
    },
  }
end
