import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a2832),
      appBar: AppBar(
        backgroundColor: const Color(0xFF168C4B),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
            SizedBox(width: 8.0),
            Text(
              'John Safwat',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image 17.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: [
                  _buildReceivedMessage('Hello !'),
                  // reuseble element ya handasa
                  _buildSentMessage('Hello !'),
                  // reuseble element ya handasa
                  _buildReceivedMessage(
                    'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It\'s like the universe loves to surprise us when we least expect it!',
                  ),
                  _buildReceivedImage(),
                  _buildSentMessage('what a Great Content Tp learn Flutter'),
                ],
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}

///------------------------ Message Bubbles -----------------------------///

Widget _buildReceivedMessage(String message) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Color(0xFF168C4B),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

Widget _buildSentMessage(String message) {
  return Align(
    alignment: Alignment.centerRight,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Color(0xFF232D36),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

Widget _buildReceivedImage() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Color(0xFF168C4B),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: const Text(
          'Route',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: Colors.blueGrey,
          ),
        ),
      ),
    ),
  );
}

///------------------------ Bottom Input -----------------------------
Widget _buildMessageComposer() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Type a Message...',
              hintStyle: TextStyle(color: Colors.white, fontSize: 12),
              prefixIcon: Icon(Icons.camera_alt, color: Colors.grey),
              suffixIcon: Icon(Icons.send, color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Color(0xFF168C4B), width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Color(0xFF168C4B), width: 1.0),
              ),
            ),
          ),
        ),
        SizedBox(width: 8.0),
        CircleAvatar(
          backgroundColor: Color(0xFF168C4B),
          child: Icon(Icons.mic, color: Colors.white),
        ),
      ],
    ),
  );
}
