module.exports =
class DeedeegMyNewPackage1823481341View
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('deedeeg-my-new-package-1823481341')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The DeedeegMyNewPackage1823481341 package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
