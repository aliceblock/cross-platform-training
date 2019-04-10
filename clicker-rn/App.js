import React, { Component } from "react";
import { View, Text, Button, TouchableOpacity, StyleSheet } from "react-native";

export default class App extends Component {
  state = {
    counter: 0
  };

  styles = StyleSheet.create({
    view: {
      width: "100%",
      height: "100%",
      justifyContent: "center",
      alignItems: "center"
    },
    button: {
      backgroundColor: '#2196f3',
      padding: 10,
      paddingLeft: 30,
      paddingRight: 30,
      borderRadius: 5,
      // To make a button raised
      shadowColor: 'rgba(0,0,0, .4)', // IOS
      shadowOffset: { height: 1, width: 1 }, // IOS
      shadowOpacity: 1, // IOS
      shadowRadius: 1, //IOS
      elevation: 2, // Android
    }
  });

  onButtonClicked() {
    this.setState({
      counter: this.state.counter + 1
    });
  }

  render() {
    return (
      <View style={this.styles.view}>
        <Text>Button clicked {this.state.counter} time(s).</Text>
        {/* <Button title="ADD" onPress={this.onButtonClicked.bind(this)} /> */}
        <TouchableOpacity style={this.styles.button} onPress={this.onButtonClicked.bind(this)}>
          <Text style={{color: 'white'}}>ADD</Text>
        </TouchableOpacity>
      </View>
    );
  }
}
