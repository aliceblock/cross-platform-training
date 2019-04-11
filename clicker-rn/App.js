import React, { Component } from "react";
import { View, Text, StyleSheet } from "react-native";
import { Toolbar, Button } from 'react-native-material-ui';

export default class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      counter: 0
    };

    this.onButtonClicked = this.onButtonClicked.bind(this);
  }

  styles = StyleSheet.create({
    pageView: {
      height: '100%'
    },
    bodyView: {
      flex: 1,
      justifyContent: "center",
      alignItems: "center"
    }
  });

  onButtonClicked() {
    this.setState({
      counter: this.state.counter + 1
    });
  }

  render() {
    return (
      <View style={this.styles.pageView}>
        <Toolbar
          centerElement="Clicker"
        />
        <View style={this.styles.bodyView}>
          <Text>Button clicked {this.state.counter} time(s).</Text>
          <Button raised primary text="ADD" onPress={this.onButtonClicked} />
        </View>
      </View>
    );
  }
}
