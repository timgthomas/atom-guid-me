{CompositeDisposable} = require 'atom'

module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', "guid-me:generate-guid", => @generateGuid()

  generateGuid: ->
    editor = atom.workspace.getActiveTextEditor()
    Guid = require 'guid'
    editor.insertText(Guid.raw())
