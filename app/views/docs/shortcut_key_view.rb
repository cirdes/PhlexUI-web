# frozen_string_literal: true

class Docs::ShortcutKeyView < ApplicationView
  def view_template
    div(class: "max-w-2xl mx-auto w-full py-10 space-y-10") do
      render Docs::Header.new(title: "Shortcut Key", description: "A component for displaying keyboard shortcuts.")

      TypographyH2 { "Usage" }

      render Docs::VisualCodeExample.new(title: "Example", context: self) do
        <<~RUBY
          div(class: "flex flex-col items-center gap-y-4") do
            ShortcutKey do
              span(class: "text-xs") { "⌘" }
              plain "K"
            end
            p(class: "text-muted-foreground text-sm text-center") { "Note this does not trigger anything, it is purely a visual prompt" }
          end
        RUBY
      end

      render Docs::ComponentsTable.new(components)
    end
  end

  private

  def components
    [
      Docs::ComponentStruct.new(name: "ShortcutKey", source: "https://github.com/PhlexUI/phlex_ui/blob/main/lib/phlex_ui/shortcut_key.rb", built_using: :phlex)
    ]
  end
end
