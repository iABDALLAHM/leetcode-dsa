class Solution {
  int numUniqueEmails(List<String> emails) {



  Set<String> setOfEmails = {};

  for (var email in emails) {
    List<String> partsOfEmail = email.split("@");

    String local = partsOfEmail[0];
    String domain = partsOfEmail[1];

    if (local.contains("+")) {
      local = local.split("+")[0];
    }

    local = local.replaceAll(".", "");
    setOfEmails.add("$local@$domain");

  }

  return setOfEmails.length;
  }
}