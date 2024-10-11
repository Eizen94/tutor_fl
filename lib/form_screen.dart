import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset('assets/horison_logo.png', height: 50),
                  ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'REGISTRATION FORM',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                _buildDateRow(),
                _buildGuestInfoRow(),
                _buildNameRow(),
                _buildAddressRow(),
                _buildPersonalInfoRow(),
                _buildLocationRow(),
                _buildContactRow(),
                _buildPaymentMethodRow(),
                const SizedBox(height: 20),
                _buildTermsAndConditions(),
                const SizedBox(height: 20),
                _buildSignatureRow(),
                const SizedBox(height: 20),
                _buildSmokingPenaltyRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDateRow() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Flexible(child: _buildTextField('Arrival Date /Tgl.Kedatangan')),
            Flexible(child: _buildTextField('Flight/ETA /Penerbangan')),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Flexible(child: _buildTextField('Departure Date /Tgl. Keberangkatan')),
            Flexible(child: _buildTextField('Flight/ETD /Penerbangan')),
          ],
        ),
      ],
    );
  }

  Widget _buildGuestInfoRow() {
    return Row(
      children: [
        Flexible(flex: 2, child: _buildTextField('No. of Guest /Jumlah Tamu')),
        Flexible(flex: 2, child: _buildTextField('Room Type /Jenis Kamar')),
        Flexible(flex: 2, child: _buildTextField('Room Rate /Tarif Kamar')),
        Flexible(flex: 1, child: _buildTextField('Room No. /No. Kamar')),
        Flexible(flex: 2, child: _buildTextField('Confirmation No. /No. Konfirmasi')),
      ],
    );
  }

  Widget _buildNameRow() {
    return Row(
      children: [
        Flexible(flex: 2, child: _buildTextField('First Name /Nama Depan')),
        Flexible(flex: 2, child: _buildTextField('Name /Nama')),
        Flexible(flex: 1, child: _buildTextField('Folio Number /No. Folio')),
      ],
    );
  }

  Widget _buildAddressRow() {
    return _buildTextField('Address /Alamat');
  }

  Widget _buildPersonalInfoRow() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTextField('Passport No. /No. Passport/No. KTP/SIM'),
        Row(
          children: [
            Flexible(child: _buildTextField('Nationality /Kebangsaan')),
            Flexible(child: _buildTextField('No. Membership Card')),
          ],
        ),
        _buildTextField('Date of Birth /Tanggal Lahir'),
      ],
    );
  }

  Widget _buildLocationRow() {
    return Row(
      children: [
        Flexible(child: _buildTextField('City /Kota')),
        Flexible(child: _buildTextField('State/Province /Propinsi')),
        Flexible(child: _buildTextField('Company /Perusahaan')),
      ],
    );
  }

  Widget _buildContactRow() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Flexible(child: _buildTextField('Country /Negara')),
            Flexible(child: _buildTextField('Postal Code /Kode Pos')),
          ],
        ),
        Row(
          children: [
            Flexible(child: _buildTextField('Telephone')),
            Flexible(child: _buildTextField('Mobile /Handphone')),
            Flexible(child: _buildTextField('E-mail /Surel')),
          ],
        ),
      ],
    );
  }

  Widget _buildPaymentMethodRow() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Method of Payment /Metode Pembayaran',
            style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            _buildCheckbox('Cash /Tunai'),
            _buildCheckbox('Visa Card'),
            _buildCheckbox('Master Card'),
          ],
        ),
        Row(
          children: [
            _buildCheckbox('American Express'),
            _buildCheckbox('BCA Card'),
            _buildCheckbox('JCB Card'),
          ],
        ),
        Row(
          children: [
            _buildCheckbox("Traveller's Cheque"),
            _buildCheckbox('Voucher'),
            Flexible(child: _buildTextField('Company Acct. /Perusahaan')),
          ],
        ),
        _buildCheckbox('Others (please specify)/Lain-lain'),
      ],
    );
  }

  Widget _buildTermsAndConditions() {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dear Guest: Please note the following terms and condition:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('• Check-in time starts at 2pm and Check-Out time is 12 noon.'),
        Text('• Hotel assumes no responsibility for jewellery, money, or any other valuables, unless placed in Hotel safe deposit box; certain restrictions apply.'),
        Text('• Room rate are subject to 21% service charge and prevailing government tax.'),
        Text('• Smoking is prohibited in our rooms and floor; It is only permitted in designated smoking areas.'),
        Text('• Hotel does not store items left behind by guests; but where ever circumstances are noted or we found in certain items in Lost & Found.'),
        Text('• Any of these lost/left items will be donated and/or discarded if not claimed.'),
        Text('• Hotel has the right to charge a guest who violates our smoking policy and/or attempting to collect deposit at a later time after Check-Out.'),
        Text('• Hotel is not responsible for accidents/injury to any guests/visitors including personal items.'),
        Text('• Non-time rooms NOT guaranteed for early Check-In, premature departures will be charged as Reserved.'),
        Text('• Cash Guest Deposit can only be collected at check-out and can only be receipted by registered Cashiers). NO Exceptions.'),
        Text('• I agree to receive e-mails from Metropolitan Golden Management (MGM) regarding my stay, experience and exclusive benefits.'),
        Text('• My signature is an authorization for the Hotel to use credit card deposit for the payment of my account.'),
      ],
    );
  }

  Widget _buildSignatureRow() {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField('Guest Signature /Tanda Tangan Tamu'),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Flexible(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField('Front Office'),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSmokingPenaltyRow() {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (bool? value) {}),
        const Flexible(
          child: Text('I Agree Rp. 1.000.000 for smoking penalty'),
        ),
      ],
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 12),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildCheckbox(String label) {
    return Flexible(
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (bool? value) {}),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}