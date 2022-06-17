//
//  FriendListView.swift
//  Choice
//
//  Created by SARAM on 2022/05/02.
//

import SwiftUI

struct myself: View {
    /*#-code-walkthrough(HomeView)*/
    
    var body: some View {
            /*#-code-walkthrough(HomeView.VStack)*/
            VStack {
            /*#-code-walkthrough(HomeView.VStack)*/
                /*#-code-walkthrough(HomeView.Text)*/
                Text("플라밍고")
                /*#-code-walkthrough(HomeView.Text)*/
                    /*#-code-walkthrough(HomeView.Text.fontModifiers)*/
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    /*#-code-walkthrough(HomeView.Text.fontModifiers)*/
                    /*#-code-walkthrough(HomeView.Text.padding)*/
                    .padding()
                    /*#-code-walkthrough(HomeView.Text.padding)*/

                /*#-code-walkthrough(HomeView.Image)*/
                Image("flamen")
                /*#-code-walkthrough(HomeView.Image)*/
                    /*#-code-walkthrough(HomeView.Image.resizable)*/
                    .resizable()
                    /*#-code-walkthrough(HomeView.Image.resizable)*/
                    /*#-code-walkthrough(HomeView.Image.aspectRatio)*/
                    .aspectRatio(contentMode: .fit)
                    /*#-code-walkthrough(HomeView.Image.aspectRatio)*/
                    /*#-code-walkthrough(HomeView.Image.cornerRadius)*/
                    .cornerRadius(10)
                    /*#-code-walkthrough(HomeView.Image.cornerRadius)*/
                    .padding(40)

                Text("성한길")
                    .font(.title)
            }
        }
        
    }

    struct myself_Previews: PreviewProvider {
        static var previews: some View {
            myself()
        }
    }

            

