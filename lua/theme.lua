local syntax = {
  bracket     = "#d0d4dc",   -- match foreground for harmony
  builtin0    = "#78c5aa",   -- soft seafoam green
  builtin1    = "#b891f9",   -- rich purple (emphasize core builtins)
  builtin2    = "#9fc9eb",   -- light soft blue (standard symbols)
  builtin3    = "#d89aca",   -- pinkish-purple (special vars like `self`)
  comment     = "#7a818e",   -- mid gray
  conditional = "#b891f9",   -- same as keyword for visual unity
  const       = "#f0a160",   -- warm orange
  dep         = "#9fc9eb",   -- soft blue to stand out slightly
  field       = "#b08cff",   -- same as dep, soft and clear
  func        = "#d89aca",   -- pink-purple (calls/functions)
  ident       = "#d0d4dc",   -- default foreground
  keyword     = "#b891f9",   -- rich purple
  number      = "#f4b183",   -- pastel orange
  operator    = "#c6cbd4",   -- neutral light gray
  preproc     = "#ef6c6c",   -- red for preprocessing
  regex       = "#78c5aa",   -- reuse seafoam green
  statement   = "#b891f9",   -- same as keyword/conditional
  string      = "#f4b183",   -- pastel orange
  type        = "#78c5aa",   -- seafoam green
  variable    = "#d4a1c7",   -- default fg
}

require('nightfox').setup({
  options = {
    styles = {
      comments = 'italic',
      keywords = 'bold'
    },
  },
  specs = {
    all = {
      -- syntax = syntax,
      syntax = {
        keyword = syntax.field,
        func = syntax.func,
        -- string = syntax.string,
        type = syntax.string,
      }
    }
  },
})

