import 'package:easy_banking/constants/color_constants.dart';
import 'package:flutter/material.dart';

List<String> phoneContacts = [
  'John Doe',
  'Jane Smith',
  'Michael Johnson',
  'Emma Brown',
  'David Lee',
  'Olivia Davis',
  'Daniel Wilson',
  'Sophia Taylor',
  'James Anderson',
  'Isabella Martinez',
];

List<String> bankAccountDetails = [
  'Account Holder: John Doe\nAccount Number: 1234567890\nBank: ABC Bank',
  'Account Holder: Jane Smith\nAccount Number: 2345678901\nBank: XYZ Bank',
  'Account Holder: Michael Johnson\nAccount Number: 3456789012\nBank: PQR Bank',
  'Account Holder: Emma Brown\nAccount Number: 4567890123\nBank: LMN Bank',
  'Account Holder: David Lee\nAccount Number: 5678901234\nBank: RST Bank',
  'Account Holder: Olivia Davis\nAccount Number: 6789012345\nBank: UVW Bank',
  'Account Holder: Daniel Wilson\nAccount Number: 7890123456\nBank: GHI Bank',
  'Account Holder: Sophia Taylor\nAccount Number: 8901234567\nBank: JKL Bank',
  'Account Holder: James Anderson\nAccount Number: 9012345678\nBank: MNO Bank',
  'Account Holder: Isabella Martinez\nAccount Number: 0123456789\nBank: DEF Bank',
];

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {

  TextEditingController _phonenumberController = TextEditingController();
  bool showPhoneContacts = false;
  bool showBankAccountDetails = false;

  void togglePhoneContacts() {
    setState(() {
      showPhoneContacts = !showPhoneContacts;
    });
  }

  void toggleBankAccountDetails() {
    setState(() {
      showBankAccountDetails = !showBankAccountDetails;
    });
  }
  String selectedOption = 'Phone Contact';
  List<String> phoneContacts = [
    'John Doe',
    'Jane Smith',
    'Mark Johnson',
    'Emily Brown',
    'Michael Davis'
  ];
  List<String> bankAccounts = [
    'Bank Account 1',
    'Bank Account 2',
    'Bank Account 3',
    'Bank Account 4',
    'Bank Account 5'
  ];

  void _showContactsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Phone Contacts'),
          content: Column(
            children: [
              for (var contact in phoneContacts)
                ListTile(
                  title: Text(contact),
                  onTap: () {
                    // Handle selection logic here
                    print('Selected Phone Contact: $contact');
                    Navigator.pop(context); // Close the dialog
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  void _showBankAccountsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Bank Accounts'),
          content: Column(
            children: [
              for (var account in bankAccounts)
                ListTile(
                  title: Text(account),
                  onTap: () {
                    // Handle selection logic here
                    print('Selected Bank Account: $account');
                    Navigator.pop(context); // Close the dialog
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _phonenumberController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
            "Send Money",
            style: TextStyle(fontSize: 20 , color: kPrimaryColor, fontWeight: FontWeight.bold)
        ),
      ),
      body: Column(
        children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: TextField(
          controller: _phonenumberController,
          decoration: InputDecoration(
            hintText: 'Search for Phone Number or Bank account number', // Hint text
            border: OutlineInputBorder( // Custom border
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true, // Add background color
            fillColor: Colors.grey[200], // Background color
            prefixIcon: Icon(Icons.dialpad_rounded), // Prefix icon
            suffixIcon: IconButton( // Suffix icon with action
              icon: Icon(Icons.clear),
              onPressed: () {
                setState(() {
                  _phonenumberController.clear();
                });
              },
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 16.0,
            ),
          ),
      ),
        ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                GestureDetector(
                  // onTap: () {
                  //   showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //         title: Text('Phone Contacts'),
                  //         content: Column(
                  //           children: [
                  //             Text('Select a contact to send money:'),
                  //             SizedBox(height: 16),
                  //             ListView.builder(
                  //               shrinkWrap: true,
                  //               itemCount: phoneContacts.length,
                  //               itemBuilder: (BuildContext context, int index) {
                  //                 return ListTile(
                  //                   title: Text(phoneContacts[index]),
                  //                   onTap: () {
                  //                     // Handle contact selection logic here
                  //                     Navigator.of(context).pop();
                  //                   },
                  //                 );
                  //               },
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   );
                  // },
                  onTap: () {
                    setState(() {
                      selectedOption = 'Phone Contact';
                    });
                    _showContactsDialog();
                  },

                  child: Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 60.0,
                    color: selectedOption == 'Phone Contact' ? Colors.green : Colors.grey,
                    child: Center(
                      child: Row(
                        children:const [
                          SizedBox(width: 10.0),
                          Icon(
                              Icons.contact_phone_sharp,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          SizedBox(width: 10.0,),
                          Text(
                            'Phone Contact',
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              //  SizedBox(width: 16.0),
                GestureDetector(
                  // onTap: () {
                  //   showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //         title: Text('Bank Accounts'),
                  //         content: Column(
                  //           children: [
                  //             Text('Select a bank account to send money:'),
                  //             SizedBox(height: 16),
                  //             ListView.builder(
                  //               shrinkWrap: true,
                  //               itemCount: bankAccountDetails.length,
                  //               itemBuilder: (BuildContext context, int index) {
                  //                 return ListTile(
                  //                   title: Text(bankAccountDetails[index]),
                  //                   onTap: () {
                  //                     // Handle bank account selection logic here
                  //                     Navigator.of(context).pop();
                  //                   },
                  //                 );
                  //               },
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   );
                  // },
                  onTap: () {
                    setState(() {
                      selectedOption = 'Bank Account';
                    });
                    _showBankAccountsDialog();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 60.0,
                    color: selectedOption == 'Bank Account' ? Colors.green : Colors.grey,
                    child: Center(
                      child: Row(
                        children: const [
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.account_balance,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Bank Account',
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                if (selectedOption == 'Phone Contact')
                  Text('Phone Contacts will be displayed here'),
                if (selectedOption == 'Bank Account')
                  Text('Bank Account details will be displayed here'),
              ],
            ),
          ),
          if (showPhoneContacts)
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'List of Phone Contacts:',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  // Display phone contacts list here
                  // Replace with your actual phone contacts list widget
                  ListView.builder(
                    itemCount: phoneContacts.length,
                      itemBuilder: (BuildContext  context , int index){
                          return Card (
                           color: Colors.black,
                          );
                      }
                  ),
                ],
              ),
            ),
          if (showBankAccountDetails)
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Bank Account Details:',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  // Display bank account details here
                  // Replace with your actual bank account details widget
                ],
              ),
            ),
        ],
      ),
    );
  }
}



