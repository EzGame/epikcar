/**
 * Singleton class for google analytics.
 */
var GAEngine = new function() {
  /**
   * The controller name of the request
   * @type {null}
   */
  this.controller = null;

  /**
   * The action name of the request
   * @type {null}
   */
  this.action = null;

  /**
   * Any additional params of the request
   * @type {null}
   */
  this.options = null;

  /**
   * Initialize some variables to simplify calls later
   * @param controller
   * @param action
   * @param options
   */
  this.initialize = function(controller, action, options) {
    this.controller = controller,
        this.action = action,
        this.options = options;

    // Initialize
    ga('create', 'UA-61245630-1', 'auto');
    ga('set', 'controller', this.controller);
    ga('set', 'action', this.action);

    for(opt in this.options) {
      ga('set', opt, this.options[opt]);
    }
  };

  /**
   * All purpose send event, uses beacon
   * @param event
   * @param options
   */
  this.send = function(event, options) {
    ga('send', event, options, {useBeacon: true});
  }
};
