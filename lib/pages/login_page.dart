import 'package:flutter/material.dart';

class Country {
  final String name;
  final String code;
  final String dialCode;

  Country({required this.name, required this.code, required this.dialCode});
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  final TextEditingController _inputController = TextEditingController();
  Country? _selectedCountry;
  final List<Country> _countries = [
    Country(name: 'Afghanistan', code: 'AF', dialCode: '+93'),
    Country(name: 'Albania', code: 'AL', dialCode: '+355'),
    Country(name: 'Algeria', code: 'DZ', dialCode: '+213'),
    Country(name: 'Andorra', code: 'AD', dialCode: '+376'),
    Country(name: 'Angola', code: 'AO', dialCode: '+244'),
    Country(name: 'Antigua and Barbuda', code: 'AG', dialCode: '+1-268'),
    Country(name: 'Argentina', code: 'AR', dialCode: '+54'),
    Country(name: 'Armenia', code: 'AM', dialCode: '+374'),
    Country(name: 'Australia', code: 'AU', dialCode: '+61'),
    Country(name: 'Austria', code: 'AT', dialCode: '+43'),
    Country(name: 'Azerbaijan', code: 'AZ', dialCode: '+994'),
    Country(name: 'Bahamas', code: 'BS', dialCode: '+1-242'),
    Country(name: 'Bahrain', code: 'BH', dialCode: '+973'),
    Country(name: 'Bangladesh', code: 'BD', dialCode: '+880'),
    Country(name: 'Barbados', code: 'BB', dialCode: '+1-246'),
    Country(name: 'Belarus', code: 'BY', dialCode: '+375'),
    Country(name: 'Belgium', code: 'BE', dialCode: '+32'),
    Country(name: 'Belize', code: 'BZ', dialCode: '+501'),
    Country(name: 'Benin', code: 'BJ', dialCode: '+229'),
    Country(name: 'Bhutan', code: 'BT', dialCode: '+975'),
    Country(name: 'Bolivia', code: 'BO', dialCode: '+591'),
    Country(name: 'Bosnia and Herzegovina', code: 'BA', dialCode: '+387'),
    Country(name: 'Botswana', code: 'BW', dialCode: '+267'),
    Country(name: 'Brazil', code: 'BR', dialCode: '+55'),
    Country(name: 'Brunei', code: 'BN', dialCode: '+673'),
    Country(name: 'Bulgaria', code: 'BG', dialCode: '+359'),
    Country(name: 'Burkina Faso', code: 'BF', dialCode: '+226'),
    Country(name: 'Burundi', code: 'BI', dialCode: '+257'),
    Country(name: 'Cabo Verde', code: 'CV', dialCode: '+238'),
    Country(name: 'Cambodia', code: 'KH', dialCode: '+855'),
    Country(name: 'Cameroon', code: 'CM', dialCode: '+237'),
    Country(name: 'Canada', code: 'CA', dialCode: '+1'),
    Country(name: 'Central African Republic', code: 'CF', dialCode: '+236'),
    Country(name: 'Chad', code: 'TD', dialCode: '+235'),
    Country(name: 'Chile', code: 'CL', dialCode: '+56'),
    Country(name: 'China', code: 'CN', dialCode: '+86'),
    Country(name: 'Colombia', code: 'CO', dialCode: '+57'),
    Country(name: 'Comoros', code: 'KM', dialCode: '+269'),
    Country(name: 'Congo (Congo-Brazzaville)', code: 'CG', dialCode: '+242'),
    Country(name: 'Costa Rica', code: 'CR', dialCode: '+506'),
    Country(name: 'Croatia', code: 'HR', dialCode: '+385'),
    Country(name: 'Cuba', code: 'CU', dialCode: '+53'),
    Country(name: 'Cyprus', code: 'CY', dialCode: '+357'),
    Country(name: 'Czechia (Czech Republic)', code: 'CZ', dialCode: '+420'),
    Country(name: 'Denmark', code: 'DK', dialCode: '+45'),
    Country(name: 'Djibouti', code: 'DJ', dialCode: '+253'),
    Country(name: 'Dominica', code: 'DM', dialCode: '+1-767'),
    Country(name: 'Dominican Republic', code: 'DO', dialCode: '+1-809'),
    Country(name: 'Dominican Republic', code: 'DO', dialCode: '+1-829'),
    Country(name: 'Dominican Republic', code: 'DO', dialCode: '+1-849'),
    Country(name: 'Ecuador', code: 'EC', dialCode: '+593'),
    Country(name: 'Egypt', code: 'EG', dialCode: '+20'),
    Country(name: 'El Salvador', code: 'SV', dialCode: '+503'),
    Country(name: 'Equatorial Guinea', code: 'GQ', dialCode: '+240'),
    Country(name: 'Eritrea', code: 'ER', dialCode: '+291'),
    Country(name: 'Estonia', code: 'EE', dialCode: '+372'),
    Country(name: 'Eswatini (fmr. "Swaziland")', code: 'SZ', dialCode: '+268'),
    Country(name: 'Ethiopia', code: 'ET', dialCode: '+251'),
    Country(name: 'Fiji', code: 'FJ', dialCode: '+679'),
    Country(name: 'Finland', code: 'FI', dialCode: '+358'),
    Country(name: 'France', code: 'FR', dialCode: '+33'),
    Country(name: 'Gabon', code: 'GA', dialCode: '+241'),
    Country(name: 'Gambia', code: 'GM', dialCode: '+220'),
    Country(name: 'Georgia', code: 'GE', dialCode: '+995'),
    Country(name: 'Germany', code: 'DE', dialCode: '+49'),
    Country(name: 'Ghana', code: 'GH', dialCode: '+233'),
    Country(name: 'Greece', code: 'GR', dialCode: '+30'),
    Country(name: 'Grenada', code: 'GD', dialCode: '+1-473'),
    Country(name: 'Guatemala', code: 'GT', dialCode: '+502'),
    Country(name: 'Guinea', code: 'GN', dialCode: '+224'),
    Country(name: 'Guinea-Bissau', code: 'GW', dialCode: '+245'),
    Country(name: 'Guyana', code: 'GY', dialCode: '+592'),
    Country(name: 'Haiti', code: 'HT', dialCode: '+509'),
    Country(name: 'Honduras', code: 'HN', dialCode: '+504'),
    Country(name: 'Hungary', code: 'HU', dialCode: '+36'),
    Country(name: 'Iceland', code: 'IS', dialCode: '+354'),
    Country(name: 'India', code: 'IN', dialCode: '+91'),
    Country(name: 'Indonesia', code: 'ID', dialCode: '+62'),
    Country(name: 'Iran', code: 'IR', dialCode: '+98'),
    Country(name: 'Iraq', code: 'IQ', dialCode: '+964'),
    Country(name: 'Ireland', code: 'IE', dialCode: '+353'),
    Country(name: 'Israel', code: 'IL', dialCode: '+972'),
    Country(name: 'Italy', code: 'IT', dialCode: '+39'),
    Country(name: 'Jamaica', code: 'JM', dialCode: '+1-876'),
    Country(name: 'Japan', code: 'JP', dialCode: '+81'),
    Country(name: 'Jordan', code: 'JO', dialCode: '+962'),
    Country(name: 'Kazakhstan', code: 'KZ', dialCode: '+7'),
    Country(name: 'Kenya', code: 'KE', dialCode: '+254'),
    Country(name: 'Kiribati', code: 'KI', dialCode: '+686'),
    Country(name: 'Kuwait', code: 'KW', dialCode: '+965'),
    Country(name: 'Kyrgyzstan', code: 'KG', dialCode: '+996'),
    Country(name: 'Laos', code: 'LA', dialCode: '+856'),
    Country(name: 'Latvia', code: 'LV', dialCode: '+371'),
    Country(name: 'Lebanon', code: 'LB', dialCode: '+961'),
    Country(name: 'Lesotho', code: 'LS', dialCode: '+266'),
    Country(name: 'Liberia', code: 'LR', dialCode: '+231'),
    Country(name: 'Libya', code: 'LY', dialCode: '+218'),
    Country(name: 'Liechtenstein', code: 'LI', dialCode: '+423'),
    Country(name: 'Lithuania', code: 'LT', dialCode: '+370'),
    Country(name: 'Luxembourg', code: 'LU', dialCode: '+352'),
    Country(name: 'Madagascar', code: 'MG', dialCode: '+261'),
    Country(name: 'Malawi', code: 'MW', dialCode: '+265'),
    Country(name: 'Malaysia', code: 'MY', dialCode: '+60'),
    Country(name: 'Maldives', code: 'MV', dialCode: '+960'),
    Country(name: 'Mali', code: 'ML', dialCode: '+223'),
    Country(name: 'Malta', code: 'MT', dialCode: '+356'),
    Country(name: 'Marshall Islands', code: 'MH', dialCode: '+692'),
    Country(name: 'Mauritania', code: 'MR', dialCode: '+222'),
    Country(name: 'Mauritius', code: 'MU', dialCode: '+230'),
    Country(name: 'Mexico', code: 'MX', dialCode: '+52'),
    Country(name: 'Micronesia', code: 'FM', dialCode: '+691'),
    Country(name: 'Moldova', code: 'MD', dialCode: '+373'),
    Country(name: 'Monaco', code: 'MC', dialCode: '+377'),
    Country(name: 'Mongolia', code: 'MN', dialCode: '+976'),
    Country(name: 'Montenegro', code: 'ME', dialCode: '+382'),
    Country(name: 'Morocco', code: 'MA', dialCode: '+212'),
    Country(name: 'Mozambique', code: 'MZ', dialCode: '+258'),
    Country(name: 'Myanmar (Burma)', code: 'MM', dialCode: '+95'),
    Country(name: 'Namibia', code: 'NA', dialCode: '+264'),
    Country(name: 'Nauru', code: 'NR', dialCode: '+674'),
    Country(name: 'Nepal', code: 'NP', dialCode: '+977'),
    Country(name: 'Netherlands', code: 'NL', dialCode: '+31'),
    Country(name: 'New Zealand', code: 'NZ', dialCode: '+64'),
    Country(name: 'Nicaragua', code: 'NI', dialCode: '+505'),
    Country(name: 'Niger', code: 'NE', dialCode: '+227'),
    Country(name: 'Nigeria', code: 'NG', dialCode: '+234'),
    Country(name: 'North Korea', code: 'KP', dialCode: '+850'),
    Country(name: 'North Macedonia', code: 'MK', dialCode: '+389'),
    Country(name: 'Norway', code: 'NO', dialCode: '+47'),
    Country(name: 'Oman', code: 'OM', dialCode: '+968'),
    Country(name: 'Pakistan', code: 'PK', dialCode: '+92'),
    Country(name: 'Palau', code: 'PW', dialCode: '+680'),
    Country(name: 'Panama', code: 'PA', dialCode: '+507'),
    Country(name: 'Papua New Guinea', code: 'PG', dialCode: '+675'),
    Country(name: 'Paraguay', code: 'PY', dialCode: '+595'),
    Country(name: 'Peru', code: 'PE', dialCode: '+51'),
    Country(name: 'Philippines', code: 'PH', dialCode: '+63'),
    Country(name: 'Poland', code: 'PL', dialCode: '+48'),
    Country(name: 'Portugal', code: 'PT', dialCode: '+351'),
    Country(name: 'Qatar', code: 'QA', dialCode: '+974'),
    Country(name: 'Romania', code: 'RO', dialCode: '+40'),
    Country(name: 'Russia', code: 'RU', dialCode: '+7'),
    Country(name: 'Rwanda', code: 'RW', dialCode: '+250'),
    Country(name: 'Saint Kitts and Nevis', code: 'KN', dialCode: '+1-869'),
    Country(name: 'Saint Lucia', code: 'LC', dialCode: '+1-758'),
    Country(
      name: 'Saint Vincent and the Grenadines',
      code: 'VC',
      dialCode: '+1-784',
    ),
    Country(name: 'Samoa', code: 'WS', dialCode: '+685'),
    Country(name: 'San Marino', code: 'SM', dialCode: '+378'),
    Country(name: 'Sao Tome and Principe', code: 'ST', dialCode: '+239'),
    Country(name: 'Saudi Arabia', code: 'SA', dialCode: '+966'),
    Country(name: 'Senegal', code: 'SN', dialCode: '+221'),
    Country(name: 'Serbia', code: 'RS', dialCode: '+381'),
  ];

  @override
  void initState() {
    super.initState();
    _selectedCountry = _countries.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildTab(0, 'Phone'),
                const SizedBox(width: 20),
                _buildTab(1, 'Email/Username'),
              ],
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child:
                  _selectedIndex == 0
                      ? Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<Country>(
                                    value: _selectedCountry,
                                    items:
                                        _countries.map((Country country) {
                                          return DropdownMenuItem<Country>(
                                            value: country,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 8,
                                                  ),
                                              child: Text(
                                                country.dialCode,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                    onChanged: (Country? newValue) {
                                      setState(() {
                                        _selectedCountry = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextFormField(
                                  controller: _inputController,
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    labelText: 'Phone Number',
                                    hintText: 'Enter phone number',
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter phone number';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Selected Country: ${_selectedCountry?.name}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                      : TextFormField(
                        controller: _inputController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email/Username',
                          hintText: 'Enter email or username',
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email or username';
                          }
                          return null;
                        },
                      ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final phoneNumber =
                        _selectedIndex == 0
                            ? '${_selectedCountry?.dialCode} ${_inputController.text}'
                            : _inputController.text;
                    print('Login with: $phoneNumber');
                  }
                },
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          _inputController.clear();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color:
              _selectedIndex == index
                  ? Colors.blue.withAlpha((0.2 * 255).toInt())
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _selectedIndex == index ? Colors.blue : Colors.grey,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedIndex == index ? Colors.blue : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
