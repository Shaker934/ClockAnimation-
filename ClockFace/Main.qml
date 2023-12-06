import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQml
import QtMultimedia





Window {
    id:clockHome
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")






    Rectangle{
        id:root
        width:360;height:360
       // radius:width /2
        color: "#D9CBC9"
       visible:true
       radius:12
       anchors.centerIn:parent

       Rectangle {
           id:analockClock
           width: 250 ; height:parent.width /7
           anchors {
         horizontalCenter: root.horizontalCenter

           bottom:parent.bottom
           bottomMargin:10



           }
           color:"#ddd"
           border.width:3
           border.color:"black"


       Row {
           id:rowid
           anchors.centerIn:analockClock

           Text{
               id:txt
               font{
                   family:"comic sans m3"
                   pixelSize : 18
                   bold:true

               }
               anchors.centerIn:rowid
               color:"blue"



           }
       }
       Timer {
           interval:1000
           running:true
           repeat:true

           onTriggered: {
               var date = new Date()
               txt.text= date.toLocaleDateString(Qt.locale(" en_us") )
           }
       }
       }



       /* Image {
            id: imgCenter
            width:parent.width
            height:parent.height
            anchors.fill:root
            source:"clock/imgCenter.jpg"

            MouseArea {
                anchors.fill:parent
                onClicked:{
                    root.state = "page1"
                }
            }
        }*/



   Image {
        id: imgHome
        source: "clock/loge5.png"
       anchors.centerIn:parent
        width:flick.Content.width
        height:flick.Content.height


       /* RotationAnimation {
            id:comId
            target:imgHome

            from: 0 ; to : 360
            duration: 25000
            loops:Animation.Infinite
            running:true

        }*/
    }




    //###########################################clock 2 ########################################
       property int clockH :0
       property int clockM :0
       property int clockS :0





        Image{
            id:imge1
           source:"clock/clock.png"
           smooth:true
           anchors.centerIn:parent
           visible:false
           fillMode:Image.pad
           cache:false



           MouseArea {

               anchors.fill:parent
               hoverEnabled:true
               onClicked :{
                   root.state = "page2"
                 //   imge2.scale = 1.2


               }
           }

           }

        Image {
            id: imge2
            source: "clock/clock2.png"
            anchors.centerIn:parent
            fillMode:Image.pad
            visible:false
            cache:false

            MouseArea {
                anchors.fill:parent
                onClicked :{
                    root.state ="page3"

                }
            }

        }

        Image {
            id: imge3
            source: "clock/clock3.png"
            anchors.centerIn:parent
            fillMode:Image.pad
            visible:false
            cache:false


             MouseArea {
                 anchors.fill:parent
                 onClicked :{
                     root.state = "page4"
                     // imge4.scale = 1.2

             }
            }
        }


        Image {
            id: imge4
            source: "clock/clock4.png"
            anchors.centerIn:parent
            fillMode:Image.pad
            visible:false
            cache:false


            MouseArea {
                anchors.fill:parent
                onClicked:{
                    root.state = "page5"
                  //  imge5.width = 320

                }
            }
        }

        Image {
            id:imge5
            source:"clock/clock5.png"
            anchors.centerIn:parent
            fillMode:Image.Pad
            visible:false
            cache:false


            MouseArea {
                anchors.fill:parent
                onClicked :{
                    root.state = "page6"
                     imgCenter.scale = 1.5 ? true : false


                }

            }
        }








       //########################################## clock3







      //######################################STATE
                state:"page1"
                states : [
                        State {
                                name:"page1"
                                PropertyChanges {
                                    target:imge1
                                    visible:true
                                }
                            },
                        State {
                        name: "page2"
                        PropertyChanges {
                            target: imge2
                            visible:true

                        }
                    },
                       State{
                        name:"page3"
                        PropertyChanges {
                            target:imge3
                            visible:true
                        }

                  },
                      State {
                        name: "page4"
                        PropertyChanges {
                            target: imge4
                            visible:true

                        }
                    },

                    State {
                        name: "page5"
                        PropertyChanges {
                            target: imge5
                            visible:true

                        }
                    },
                    State{
                        name:"page6"
                        PropertyChanges {
                            target:imgCenter
                            visible:true
                        }
                    }



                ]







































       //######################################## Timer




        Image {
            id: hourImg
            source:"clock/2hour.png"
            anchors{
                centerIn: parent
                verticalCenterOffset: 0
                horizontalCenterOffset: 0
            }

            fillMode:Image.PreserveAspectFit
            transform:Rotation {
                id:hourRotation
                axis{x:0;y:0;z:1}
                origin.x:hourImg.width / 2
                origin.y:hourImg.height /2
                angle:0
            }


        Image{
            id:minuImg
            source:"clock/2minu.png"
            anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter:parent.horizontalCenter
                }


            fillMode:Image.PreserveAspectFit
            transform:Rotation {
                id:minRotation
                axis{x:0;y:0;z:1}
                  origin.x: minuImg.width/2
                  origin.y: minuImg.height/2
                  angle: 0
            }


        Image{
            id:secImg
            source:"clock/2sec.png"


            anchors{
                horizontalCenter:clock.horizontalCenter
                verticalCenter:clock.verticalCenter
            }
            fillMode:Image.PreserveAspectFit

            transform: Rotation
                      {
                           id:secRotation
                           axis{x:0;y:0;z:1}
                             origin.x: secImg.width/2
                             origin.y: secImg.height/2
                             angle: 0
                       }


        Timer {
            interval:1000
            running:true
            repeat:true
            onTriggered:{
                var date = new Date();
                var seconds = date.getSeconds();
                var minutes = date.getMinutes() + seconds / 60 ;
                var hours = date.getHours() + minutes / 60 ;

                secRotation.angle = seconds * 6 ;
                minRotation.angle = minutes * 6  ;
                hourRotation.angle = (hours % 12 ) * 30 ;
            }
        }
    }

    }
        }

    Image {
        id: imgCenter
        width:parent.width
        height:parent.height
        anchors.fill:root
        visible:false
        source:"clock/clock9.png"

        MouseArea {
            anchors.fill:parent
            onClicked:{
                root.state = "page1"
            }
        }
    }



    }
}





































