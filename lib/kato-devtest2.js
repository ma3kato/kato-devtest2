'use babel';

import { CompositeDisposable } from 'atom';

export default {

  subscriptions: null,

  activate(state) {
    // Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    this.subscriptions = new CompositeDisposable();

    // Register command that toggles this view
    this.subscriptions.add(atom.commands.add('atom-workspace', {
      'kato-devtest2:countline': () => this.countline()
    }));
  },

  countline() {
    editor = atom.workspace.getActiveTextEditor();
    alert("count line" + editor.getLineCount());
    alert("count Chars" + editor.getText().length);
    console.log("this is a pen")


  },

  deactivate() {
    this.subscriptions.dispose();
  },

  toggle() {
    console.log('KatoDevtest2 was toggled!');
    return (
      this.modalPanel.isVisible() ?
      this.modalPanel.hide() :
      this.modalPanel.show()
    );
  }

};
