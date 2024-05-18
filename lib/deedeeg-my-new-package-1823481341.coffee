DeedeegMyNewPackage1823481341View = require './deedeeg-my-new-package-1823481341-view'
{CompositeDisposable} = require 'atom'

module.exports = DeedeegMyNewPackage1823481341 =
  deedeegMyNewPackage1823481341View: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @deedeegMyNewPackage1823481341View = new DeedeegMyNewPackage1823481341View(state.deedeegMyNewPackage1823481341ViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @deedeegMyNewPackage1823481341View.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'deedeeg-my-new-package-1823481341:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @deedeegMyNewPackage1823481341View.destroy()

  serialize: ->
    deedeegMyNewPackage1823481341ViewState: @deedeegMyNewPackage1823481341View.serialize()

  toggle: ->
    console.log 'DeedeegMyNewPackage1823481341 was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
