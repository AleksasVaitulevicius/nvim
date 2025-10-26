local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
	s(
		{
			trig = "\\fig",
			dscr = "",
			snippetType = "autosnippet",
		},
		fmta(
			[[
			\begin{figure}
			    \centering
			    \includegraphics[width=\linewidth]{figures/<>}
				\caption{<>.}
				\label{<>}
			\end{figure}
		    ]],
			{ i(1), i(2), i(3) }
		)
	),
}
