class ApiResponse {
  ApiResponse({
    bool? success,
    String? message,
    Data? data,
  }) {
    _success = success;
    _message = message;
    _data = data;
  }

  ApiResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;
  ApiResponse copyWith({
    bool? success,
    String? message,
    Data? data,
  }) =>
      ApiResponse(
        success: success ?? _success,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    int? clusterPurseBalance,
    int? totalInterestEarned,
    int? totalOwedByMembers,
    List<dynamic>? overdueAgents,
    String? clusterName,
    double? clusterRepaymentRate,
    String? clusterRepaymentDay,
    List<dynamic>? dueAgents,
    List<ActiveAgents>? activeAgents,
    List<InactiveAgents>? inactiveAgents,
  }) {
    _clusterPurseBalance = clusterPurseBalance;
    _totalInterestEarned = totalInterestEarned;
    _totalOwedByMembers = totalOwedByMembers;
    _overdueAgents = overdueAgents;
    _clusterName = clusterName;
    _clusterRepaymentRate = clusterRepaymentRate;
    _clusterRepaymentDay = clusterRepaymentDay;
    _dueAgents = dueAgents;
    _activeAgents = activeAgents;
    _inactiveAgents = inactiveAgents;
  }

  Data.fromJson(dynamic json) {
    _clusterPurseBalance = json['cluster_purse_balance'];
    _totalInterestEarned = json['total_interest_earned'];
    _totalOwedByMembers = json['total_owed_by_members'];
    if (json['overdue_agents'] != null) {
      _overdueAgents = [];
      json['overdue_agents'].forEach((v) {
        _overdueAgents?.add(v);
      });
    }
    _clusterName = json['cluster_name'];
    _clusterRepaymentRate = json['cluster_repayment_rate'];
    _clusterRepaymentDay = json['cluster_repayment_day'];
    if (json['due_agents'] != null) {
      _dueAgents = [];
      json['due_agents'].forEach((v) {
        _dueAgents?.add(v);
      });
    }
    if (json['active_agents'] != null) {
      _activeAgents = [];
      json['active_agents'].forEach((v) {
        _activeAgents?.add(ActiveAgents.fromJson(v));
      });
    }
    if (json['inactive_agents'] != null) {
      _inactiveAgents = [];
      json['inactive_agents'].forEach((v) {
        _inactiveAgents?.add(InactiveAgents.fromJson(v));
      });
    }
  }
  int? _clusterPurseBalance;
  int? _totalInterestEarned;
  int? _totalOwedByMembers;
  List<dynamic>? _overdueAgents;
  String? _clusterName;
  double? _clusterRepaymentRate;
  String? _clusterRepaymentDay;
  List<dynamic>? _dueAgents;
  List<ActiveAgents>? _activeAgents;
  List<InactiveAgents>? _inactiveAgents;
  Data copyWith({
    int? clusterPurseBalance,
    int? totalInterestEarned,
    int? totalOwedByMembers,
    List<dynamic>? overdueAgents,
    String? clusterName,
    double? clusterRepaymentRate,
    String? clusterRepaymentDay,
    List<dynamic>? dueAgents,
    List<ActiveAgents>? activeAgents,
    List<InactiveAgents>? inactiveAgents,
  }) =>
      Data(
        clusterPurseBalance: clusterPurseBalance ?? _clusterPurseBalance,
        totalInterestEarned: totalInterestEarned ?? _totalInterestEarned,
        totalOwedByMembers: totalOwedByMembers ?? _totalOwedByMembers,
        overdueAgents: overdueAgents ?? _overdueAgents,
        clusterName: clusterName ?? _clusterName,
        clusterRepaymentRate: clusterRepaymentRate ?? _clusterRepaymentRate,
        clusterRepaymentDay: clusterRepaymentDay ?? _clusterRepaymentDay,
        dueAgents: dueAgents ?? _dueAgents,
        activeAgents: activeAgents ?? _activeAgents,
        inactiveAgents: inactiveAgents ?? _inactiveAgents,
      );
  int? get clusterPurseBalance => _clusterPurseBalance;
  int? get totalInterestEarned => _totalInterestEarned;
  int? get totalOwedByMembers => _totalOwedByMembers;
  List<dynamic>? get overdueAgents => _overdueAgents;
  String? get clusterName => _clusterName;
  double? get clusterRepaymentRate => _clusterRepaymentRate;
  String? get clusterRepaymentDay => _clusterRepaymentDay;
  List<dynamic>? get dueAgents => _dueAgents;
  List<ActiveAgents>? get activeAgents => _activeAgents;
  List<InactiveAgents>? get inactiveAgents => _inactiveAgents;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cluster_purse_balance'] = _clusterPurseBalance;
    map['total_interest_earned'] = _totalInterestEarned;
    map['total_owed_by_members'] = _totalOwedByMembers;
    if (_overdueAgents != null) {
      map['overdue_agents'] = _overdueAgents?.map((v) => v.toJson()).toList();
    }
    map['cluster_name'] = _clusterName;
    map['cluster_repayment_rate'] = _clusterRepaymentRate;
    map['cluster_repayment_day'] = _clusterRepaymentDay;
    if (_dueAgents != null) {
      map['due_agents'] = _dueAgents?.map((v) => v.toJson()).toList();
    }
    if (_activeAgents != null) {
      map['active_agents'] = _activeAgents?.map((v) => v.toJson()).toList();
    }
    if (_inactiveAgents != null) {
      map['inactive_agents'] = _inactiveAgents?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class InactiveAgents {
  InactiveAgents({
    String? id,
    String? userId,
    String? agentId,
    String? clusterId,
    int? statusId,
    String? acceptedAt,
    String? createdAt,
    Agent? agent,
  }) {
    _id = id;
    _userId = userId;
    _agentId = agentId;
    _clusterId = clusterId;
    _statusId = statusId;
    _acceptedAt = acceptedAt;
    _createdAt = createdAt;
    _agent = agent;
  }

  InactiveAgents.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _agentId = json['agent_id'];
    _clusterId = json['cluster_id'];
    _statusId = json['status_id'];
    _acceptedAt = json['accepted_at'];
    _createdAt = json['created_at'];
    _agent = json['agent'] != null ? Agent.fromJson(json['agent']) : null;
  }
  String? _id;
  String? _userId;
  String? _agentId;
  String? _clusterId;
  int? _statusId;
  String? _acceptedAt;
  String? _createdAt;
  Agent? _agent;
  InactiveAgents copyWith({
    String? id,
    String? userId,
    String? agentId,
    String? clusterId,
    int? statusId,
    String? acceptedAt,
    String? createdAt,
    Agent? agent,
  }) =>
      InactiveAgents(
        id: id ?? _id,
        userId: userId ?? _userId,
        agentId: agentId ?? _agentId,
        clusterId: clusterId ?? _clusterId,
        statusId: statusId ?? _statusId,
        acceptedAt: acceptedAt ?? _acceptedAt,
        createdAt: createdAt ?? _createdAt,
        agent: agent ?? _agent,
      );
  String? get id => _id;
  String? get userId => _userId;
  String? get agentId => _agentId;
  String? get clusterId => _clusterId;
  int? get statusId => _statusId;
  String? get acceptedAt => _acceptedAt;
  String? get createdAt => _createdAt;
  Agent? get agent => _agent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['agent_id'] = _agentId;
    map['cluster_id'] = _clusterId;
    map['status_id'] = _statusId;
    map['accepted_at'] = _acceptedAt;
    map['created_at'] = _createdAt;
    if (_agent != null) {
      map['agent'] = _agent?.toJson();
    }
    return map;
  }
}

class Agent {
  Agent({
    String? id,
    String? userId,
    dynamic moniId,
    String? eligibleLoanId,
    String? firstName,
    dynamic middleName,
    String? lastName,
    String? nickname,
    String? birthDate,
    String? gender,
    String? businessName,
    String? maritalStatus,
    String? education,
    String? houseAddress,
    String? shopAddress,
    String? lga,
    String? city,
    String? state,
    dynamic country,
    String? phoneNumber,
    String? emailAddress,
    String? bvn,
    int? hasCreditHistory,
    int? verified,
    String? referralLink,
    dynamic mediaUrl,
    String? channel,
    int? agentRepaymentRate,
    int? bvnVerifiedAfter,
    int? loanEnabled,
    int? statusId,
    String? eligibleLoanModifiedAt,
    String? createdAt,
    String? modifiedAt,
    int? capAgentLoan,
    int? loanCount,
    RecentLoan? recentLoan,
    bool? suspended,
  }) {
    _id = id;
    _userId = userId;
    _moniId = moniId;
    _eligibleLoanId = eligibleLoanId;
    _firstName = firstName;
    _middleName = middleName;
    _lastName = lastName;
    _nickname = nickname;
    _birthDate = birthDate;
    _gender = gender;
    _businessName = businessName;
    _maritalStatus = maritalStatus;
    _education = education;
    _houseAddress = houseAddress;
    _shopAddress = shopAddress;
    _lga = lga;
    _city = city;
    _state = state;
    _country = country;
    _phoneNumber = phoneNumber;
    _emailAddress = emailAddress;
    _bvn = bvn;
    _hasCreditHistory = hasCreditHistory;
    _verified = verified;
    _referralLink = referralLink;
    _mediaUrl = mediaUrl;
    _channel = channel;
    _agentRepaymentRate = agentRepaymentRate;
    _bvnVerifiedAfter = bvnVerifiedAfter;
    _loanEnabled = loanEnabled;
    _statusId = statusId;
    _eligibleLoanModifiedAt = eligibleLoanModifiedAt;
    _createdAt = createdAt;
    _modifiedAt = modifiedAt;
    _capAgentLoan = capAgentLoan;
    _loanCount = loanCount;
    _recentLoan = recentLoan;
    _suspended = suspended;
  }

  Agent.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _moniId = json['moni_id'];
    _eligibleLoanId = json['eligible_loan_id'];
    _firstName = json['first_name'];
    _middleName = json['middle_name'];
    _lastName = json['last_name'];
    _nickname = json['nickname'];
    _birthDate = json['birth_date'];
    _gender = json['gender'];
    _businessName = json['business_name'];
    _maritalStatus = json['marital_status'];
    _education = json['education'];
    _houseAddress = json['house_address'];
    _shopAddress = json['shop_address'];
    _lga = json['lga'];
    _city = json['city'];
    _state = json['state'];
    _country = json['country'];
    _phoneNumber = json['phone_number'];
    _emailAddress = json['email_address'];
    _bvn = json['bvn'];
    _hasCreditHistory = json['has_credit_history'];
    _verified = json['verified'];
    _referralLink = json['referral_link'];
    _mediaUrl = json['media_url'];
    _channel = json['channel'];
    _agentRepaymentRate = json['agent_repayment_rate'];
    _bvnVerifiedAfter = json['bvn_verified_after'];
    _loanEnabled = json['loan_enabled'];
    _statusId = json['status_id'];
    _eligibleLoanModifiedAt = json['eligible_loan_modified_at'];
    _createdAt = json['created_at'];
    _modifiedAt = json['modified_at'];
    _capAgentLoan = json['cap_agent_loan'];
    _loanCount = json['loan_count'];
    _recentLoan = json['recent_loan'] != null
        ? RecentLoan.fromJson(json['recent_loan'])
        : null;
    _suspended = json['suspended'];
  }
  String? _id;
  String? _userId;
  dynamic _moniId;
  String? _eligibleLoanId;
  String? _firstName;
  dynamic _middleName;
  String? _lastName;
  String? _nickname;
  String? _birthDate;
  String? _gender;
  String? _businessName;
  String? _maritalStatus;
  String? _education;
  String? _houseAddress;
  String? _shopAddress;
  String? _lga;
  String? _city;
  String? _state;
  dynamic _country;
  String? _phoneNumber;
  String? _emailAddress;
  String? _bvn;
  int? _hasCreditHistory;
  int? _verified;
  String? _referralLink;
  dynamic _mediaUrl;
  String? _channel;
  int? _agentRepaymentRate;
  int? _bvnVerifiedAfter;
  int? _loanEnabled;
  int? _statusId;
  String? _eligibleLoanModifiedAt;
  String? _createdAt;
  String? _modifiedAt;
  int? _capAgentLoan;
  int? _loanCount;
  RecentLoan? _recentLoan;
  bool? _suspended;
  Agent copyWith({
    String? id,
    String? userId,
    dynamic moniId,
    String? eligibleLoanId,
    String? firstName,
    dynamic middleName,
    String? lastName,
    String? nickname,
    String? birthDate,
    String? gender,
    String? businessName,
    String? maritalStatus,
    String? education,
    String? houseAddress,
    String? shopAddress,
    String? lga,
    String? city,
    String? state,
    dynamic country,
    String? phoneNumber,
    String? emailAddress,
    String? bvn,
    int? hasCreditHistory,
    int? verified,
    String? referralLink,
    dynamic mediaUrl,
    String? channel,
    int? agentRepaymentRate,
    int? bvnVerifiedAfter,
    int? loanEnabled,
    int? statusId,
    String? eligibleLoanModifiedAt,
    String? createdAt,
    String? modifiedAt,
    int? capAgentLoan,
    int? loanCount,
    RecentLoan? recentLoan,
    bool? suspended,
  }) =>
      Agent(
        id: id ?? _id,
        userId: userId ?? _userId,
        moniId: moniId ?? _moniId,
        eligibleLoanId: eligibleLoanId ?? _eligibleLoanId,
        firstName: firstName ?? _firstName,
        middleName: middleName ?? _middleName,
        lastName: lastName ?? _lastName,
        nickname: nickname ?? _nickname,
        birthDate: birthDate ?? _birthDate,
        gender: gender ?? _gender,
        businessName: businessName ?? _businessName,
        maritalStatus: maritalStatus ?? _maritalStatus,
        education: education ?? _education,
        houseAddress: houseAddress ?? _houseAddress,
        shopAddress: shopAddress ?? _shopAddress,
        lga: lga ?? _lga,
        city: city ?? _city,
        state: state ?? _state,
        country: country ?? _country,
        phoneNumber: phoneNumber ?? _phoneNumber,
        emailAddress: emailAddress ?? _emailAddress,
        bvn: bvn ?? _bvn,
        hasCreditHistory: hasCreditHistory ?? _hasCreditHistory,
        verified: verified ?? _verified,
        referralLink: referralLink ?? _referralLink,
        mediaUrl: mediaUrl ?? _mediaUrl,
        channel: channel ?? _channel,
        agentRepaymentRate: agentRepaymentRate ?? _agentRepaymentRate,
        bvnVerifiedAfter: bvnVerifiedAfter ?? _bvnVerifiedAfter,
        loanEnabled: loanEnabled ?? _loanEnabled,
        statusId: statusId ?? _statusId,
        eligibleLoanModifiedAt:
            eligibleLoanModifiedAt ?? _eligibleLoanModifiedAt,
        createdAt: createdAt ?? _createdAt,
        modifiedAt: modifiedAt ?? _modifiedAt,
        capAgentLoan: capAgentLoan ?? _capAgentLoan,
        loanCount: loanCount ?? _loanCount,
        recentLoan: recentLoan ?? _recentLoan,
        suspended: suspended ?? _suspended,
      );
  String? get id => _id;
  String? get userId => _userId;
  dynamic get moniId => _moniId;
  String? get eligibleLoanId => _eligibleLoanId;
  String? get firstName => _firstName;
  dynamic get middleName => _middleName;
  String? get lastName => _lastName;
  String? get nickname => _nickname;
  String? get birthDate => _birthDate;
  String? get gender => _gender;
  String? get businessName => _businessName;
  String? get maritalStatus => _maritalStatus;
  String? get education => _education;
  String? get houseAddress => _houseAddress;
  String? get shopAddress => _shopAddress;
  String? get lga => _lga;
  String? get city => _city;
  String? get state => _state;
  dynamic get country => _country;
  String? get phoneNumber => _phoneNumber;
  String? get emailAddress => _emailAddress;
  String? get bvn => _bvn;
  int? get hasCreditHistory => _hasCreditHistory;
  int? get verified => _verified;
  String? get referralLink => _referralLink;
  dynamic get mediaUrl => _mediaUrl;
  String? get channel => _channel;
  int? get agentRepaymentRate => _agentRepaymentRate;
  int? get bvnVerifiedAfter => _bvnVerifiedAfter;
  int? get loanEnabled => _loanEnabled;
  int? get statusId => _statusId;
  String? get eligibleLoanModifiedAt => _eligibleLoanModifiedAt;
  String? get createdAt => _createdAt;
  String? get modifiedAt => _modifiedAt;
  int? get capAgentLoan => _capAgentLoan;
  int? get loanCount => _loanCount;
  RecentLoan? get recentLoan => _recentLoan;
  bool? get suspended => _suspended;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['moni_id'] = _moniId;
    map['eligible_loan_id'] = _eligibleLoanId;
    map['first_name'] = _firstName;
    map['middle_name'] = _middleName;
    map['last_name'] = _lastName;
    map['nickname'] = _nickname;
    map['birth_date'] = _birthDate;
    map['gender'] = _gender;
    map['business_name'] = _businessName;
    map['marital_status'] = _maritalStatus;
    map['education'] = _education;
    map['house_address'] = _houseAddress;
    map['shop_address'] = _shopAddress;
    map['lga'] = _lga;
    map['city'] = _city;
    map['state'] = _state;
    map['country'] = _country;
    map['phone_number'] = _phoneNumber;
    map['email_address'] = _emailAddress;
    map['bvn'] = _bvn;
    map['has_credit_history'] = _hasCreditHistory;
    map['verified'] = _verified;
    map['referral_link'] = _referralLink;
    map['media_url'] = _mediaUrl;
    map['channel'] = _channel;
    map['agent_repayment_rate'] = _agentRepaymentRate;
    map['bvn_verified_after'] = _bvnVerifiedAfter;
    map['loan_enabled'] = _loanEnabled;
    map['status_id'] = _statusId;
    map['eligible_loan_modified_at'] = _eligibleLoanModifiedAt;
    map['created_at'] = _createdAt;
    map['modified_at'] = _modifiedAt;
    map['cap_agent_loan'] = _capAgentLoan;
    map['loan_count'] = _loanCount;
    if (_recentLoan != null) {
      map['recent_loan'] = _recentLoan?.toJson();
    }
    map['suspended'] = _suspended;
    return map;
  }
}

class RecentLoan {
  RecentLoan({
    String? id,
    String? agentId,
    String? clusterId,
    String? agentLoanId,
    int? loanAmount,
    String? createdAt,
    AgentLoan? agentLoan,
  }) {
    _id = id;
    _agentId = agentId;
    _clusterId = clusterId;
    _agentLoanId = agentLoanId;
    _loanAmount = loanAmount;
    _createdAt = createdAt;
    _agentLoan = agentLoan;
  }

  RecentLoan.fromJson(dynamic json) {
    _id = json['id'];
    _agentId = json['agent_id'];
    _clusterId = json['cluster_id'];
    _agentLoanId = json['agent_loan_id'];
    _loanAmount = json['loan_amount'];
    _createdAt = json['created_at'];
    _agentLoan = json['agent_loan'] != null
        ? AgentLoan.fromJson(json['agent_loan'])
        : null;
  }
  String? _id;
  String? _agentId;
  String? _clusterId;
  String? _agentLoanId;
  int? _loanAmount;
  String? _createdAt;
  AgentLoan? _agentLoan;
  RecentLoan copyWith({
    String? id,
    String? agentId,
    String? clusterId,
    String? agentLoanId,
    int? loanAmount,
    String? createdAt,
    AgentLoan? agentLoan,
  }) =>
      RecentLoan(
        id: id ?? _id,
        agentId: agentId ?? _agentId,
        clusterId: clusterId ?? _clusterId,
        agentLoanId: agentLoanId ?? _agentLoanId,
        loanAmount: loanAmount ?? _loanAmount,
        createdAt: createdAt ?? _createdAt,
        agentLoan: agentLoan ?? _agentLoan,
      );
  String? get id => _id;
  String? get agentId => _agentId;
  String? get clusterId => _clusterId;
  String? get agentLoanId => _agentLoanId;
  int? get loanAmount => _loanAmount;
  String? get createdAt => _createdAt;
  AgentLoan? get agentLoan => _agentLoan;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['agent_id'] = _agentId;
    map['cluster_id'] = _clusterId;
    map['agent_loan_id'] = _agentLoanId;
    map['loan_amount'] = _loanAmount;
    map['created_at'] = _createdAt;
    if (_agentLoan != null) {
      map['agent_loan'] = _agentLoan?.toJson();
    }
    return map;
  }
}

class AgentLoan {
  AgentLoan({
    String? id,
    String? agentId,
    String? agentCreditScoreId,
    String? loanId,
    String? agentCardId,
    String? interestType,
    double? interestValue,
    String? loanDurationType,
    int? loanDuration,
    String? loanDueDate,
    int? daysPastDue,
    int? loanAmount,
    int? loanAmountDue,
    int? loanInterestDue,
    String? loanPaymentDate,
    int? loanPaymentRate,
    int? loanAmountPaid,
    int? penaltyOutstanding,
    int? penaltyPaid,
    int? principalPaid,
    int? principalOutstanding,
    int? interestPaid,
    int? interestOutstanding,
    int? penaltyAmount,
    LoanStatus? loanStatus,
    int? isMax,
    int? statusId,
    int? acceptTerms,
    String? createdAt,
    String? modifiedAt,
    Status? status,
  }) {
    _id = id;
    _agentId = agentId;
    _agentCreditScoreId = agentCreditScoreId;
    _loanId = loanId;
    _agentCardId = agentCardId;
    _interestType = interestType;
    _interestValue = interestValue;
    _loanDurationType = loanDurationType;
    _loanDuration = loanDuration;
    _loanDueDate = loanDueDate;
    _daysPastDue = daysPastDue;
    _loanAmount = loanAmount;
    _loanAmountDue = loanAmountDue;
    _loanInterestDue = loanInterestDue;
    _loanPaymentDate = loanPaymentDate;
    _loanPaymentRate = loanPaymentRate;
    _loanAmountPaid = loanAmountPaid;
    _penaltyOutstanding = penaltyOutstanding;
    _penaltyPaid = penaltyPaid;
    _principalPaid = principalPaid;
    _principalOutstanding = principalOutstanding;
    _interestPaid = interestPaid;
    _interestOutstanding = interestOutstanding;
    _penaltyAmount = penaltyAmount;
    _loanStatus = loanStatus;
    _isMax = isMax;
    _statusId = statusId;
    _acceptTerms = acceptTerms;
    _createdAt = createdAt;
    _modifiedAt = modifiedAt;
    _status = status;
  }

  AgentLoan.fromJson(dynamic json) {
    _id = json['id'];
    _agentId = json['agent_id'];
    _agentCreditScoreId = json['agent_credit_score_id'];
    _loanId = json['loan_id'];
    _agentCardId = json['agent_card_id'];
    _interestType = json['interest_type'];
    _interestValue = json['interest_value'];
    _loanDurationType = json['loan_duration_type'];
    _loanDuration = json['loan_duration'];
    _loanDueDate = json['loan_due_date'];
    _daysPastDue = json['days_past_due'];
    _loanAmount = json['loan_amount'];
    _loanAmountDue = json['loan_amount_due'];
    _loanInterestDue = json['loan_interest_due'];
    _loanPaymentDate = json['loan_payment_date'];
    _loanPaymentRate = json['loan_payment_rate'];
    _loanAmountPaid = json['loan_amount_paid'];
    _penaltyOutstanding = json['penalty_outstanding'];
    _penaltyPaid = json['penalty_paid'];
    _principalPaid = json['principal_paid'];
    _principalOutstanding = json['principal_outstanding'];
    _interestPaid = json['interest_paid'];
    _interestOutstanding = json['interest_outstanding'];
    _penaltyAmount = json['penalty_amount'];
    _loanStatus = json['loan_status'] != null
        ? LoanStatus.fromJson(json['loan_status'])
        : null;
    _isMax = json['is_max'];
    _statusId = json['status_id'];
    _acceptTerms = json['accept_terms'];
    _createdAt = json['created_at'];
    _modifiedAt = json['modified_at'];
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
  String? _id;
  String? _agentId;
  String? _agentCreditScoreId;
  String? _loanId;
  String? _agentCardId;
  String? _interestType;
  double? _interestValue;
  String? _loanDurationType;
  int? _loanDuration;
  String? _loanDueDate;
  int? _daysPastDue;
  int? _loanAmount;
  int? _loanAmountDue;
  int? _loanInterestDue;
  String? _loanPaymentDate;
  int? _loanPaymentRate;
  int? _loanAmountPaid;
  int? _penaltyOutstanding;
  int? _penaltyPaid;
  int? _principalPaid;
  int? _principalOutstanding;
  int? _interestPaid;
  int? _interestOutstanding;
  int? _penaltyAmount;
  LoanStatus? _loanStatus;
  int? _isMax;
  int? _statusId;
  int? _acceptTerms;
  String? _createdAt;
  String? _modifiedAt;
  Status? _status;
  AgentLoan copyWith({
    String? id,
    String? agentId,
    String? agentCreditScoreId,
    String? loanId,
    String? agentCardId,
    String? interestType,
    double? interestValue,
    String? loanDurationType,
    int? loanDuration,
    String? loanDueDate,
    int? daysPastDue,
    int? loanAmount,
    int? loanAmountDue,
    int? loanInterestDue,
    String? loanPaymentDate,
    int? loanPaymentRate,
    int? loanAmountPaid,
    int? penaltyOutstanding,
    int? penaltyPaid,
    int? principalPaid,
    int? principalOutstanding,
    int? interestPaid,
    int? interestOutstanding,
    int? penaltyAmount,
    LoanStatus? loanStatus,
    int? isMax,
    int? statusId,
    int? acceptTerms,
    String? createdAt,
    String? modifiedAt,
    Status? status,
  }) =>
      AgentLoan(
        id: id ?? _id,
        agentId: agentId ?? _agentId,
        agentCreditScoreId: agentCreditScoreId ?? _agentCreditScoreId,
        loanId: loanId ?? _loanId,
        agentCardId: agentCardId ?? _agentCardId,
        interestType: interestType ?? _interestType,
        interestValue: interestValue ?? _interestValue,
        loanDurationType: loanDurationType ?? _loanDurationType,
        loanDuration: loanDuration ?? _loanDuration,
        loanDueDate: loanDueDate ?? _loanDueDate,
        daysPastDue: daysPastDue ?? _daysPastDue,
        loanAmount: loanAmount ?? _loanAmount,
        loanAmountDue: loanAmountDue ?? _loanAmountDue,
        loanInterestDue: loanInterestDue ?? _loanInterestDue,
        loanPaymentDate: loanPaymentDate ?? _loanPaymentDate,
        loanPaymentRate: loanPaymentRate ?? _loanPaymentRate,
        loanAmountPaid: loanAmountPaid ?? _loanAmountPaid,
        penaltyOutstanding: penaltyOutstanding ?? _penaltyOutstanding,
        penaltyPaid: penaltyPaid ?? _penaltyPaid,
        principalPaid: principalPaid ?? _principalPaid,
        principalOutstanding: principalOutstanding ?? _principalOutstanding,
        interestPaid: interestPaid ?? _interestPaid,
        interestOutstanding: interestOutstanding ?? _interestOutstanding,
        penaltyAmount: penaltyAmount ?? _penaltyAmount,
        loanStatus: loanStatus ?? _loanStatus,
        isMax: isMax ?? _isMax,
        statusId: statusId ?? _statusId,
        acceptTerms: acceptTerms ?? _acceptTerms,
        createdAt: createdAt ?? _createdAt,
        modifiedAt: modifiedAt ?? _modifiedAt,
        status: status ?? _status,
      );
  String? get id => _id;
  String? get agentId => _agentId;
  String? get agentCreditScoreId => _agentCreditScoreId;
  String? get loanId => _loanId;
  String? get agentCardId => _agentCardId;
  String? get interestType => _interestType;
  double? get interestValue => _interestValue;
  String? get loanDurationType => _loanDurationType;
  int? get loanDuration => _loanDuration;
  String? get loanDueDate => _loanDueDate;
  int? get daysPastDue => _daysPastDue;
  int? get loanAmount => _loanAmount;
  int? get loanAmountDue => _loanAmountDue;
  int? get loanInterestDue => _loanInterestDue;
  String? get loanPaymentDate => _loanPaymentDate;
  int? get loanPaymentRate => _loanPaymentRate;
  int? get loanAmountPaid => _loanAmountPaid;
  int? get penaltyOutstanding => _penaltyOutstanding;
  int? get penaltyPaid => _penaltyPaid;
  int? get principalPaid => _principalPaid;
  int? get principalOutstanding => _principalOutstanding;
  int? get interestPaid => _interestPaid;
  int? get interestOutstanding => _interestOutstanding;
  int? get penaltyAmount => _penaltyAmount;
  LoanStatus? get loanStatus => _loanStatus;
  int? get isMax => _isMax;
  int? get statusId => _statusId;
  int? get acceptTerms => _acceptTerms;
  String? get createdAt => _createdAt;
  String? get modifiedAt => _modifiedAt;
  Status? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['agent_id'] = _agentId;
    map['agent_credit_score_id'] = _agentCreditScoreId;
    map['loan_id'] = _loanId;
    map['agent_card_id'] = _agentCardId;
    map['interest_type'] = _interestType;
    map['interest_value'] = _interestValue;
    map['loan_duration_type'] = _loanDurationType;
    map['loan_duration'] = _loanDuration;
    map['loan_due_date'] = _loanDueDate;
    map['days_past_due'] = _daysPastDue;
    map['loan_amount'] = _loanAmount;
    map['loan_amount_due'] = _loanAmountDue;
    map['loan_interest_due'] = _loanInterestDue;
    map['loan_payment_date'] = _loanPaymentDate;
    map['loan_payment_rate'] = _loanPaymentRate;
    map['loan_amount_paid'] = _loanAmountPaid;
    map['penalty_outstanding'] = _penaltyOutstanding;
    map['penalty_paid'] = _penaltyPaid;
    map['principal_paid'] = _principalPaid;
    map['principal_outstanding'] = _principalOutstanding;
    map['interest_paid'] = _interestPaid;
    map['interest_outstanding'] = _interestOutstanding;
    map['penalty_amount'] = _penaltyAmount;
    if (_loanStatus != null) {
      map['loan_status'] = _loanStatus?.toJson();
    }
    map['is_max'] = _isMax;
    map['status_id'] = _statusId;
    map['accept_terms'] = _acceptTerms;
    map['created_at'] = _createdAt;
    map['modified_at'] = _modifiedAt;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    return map;
  }
}

class Status {
  Status({
    int? id,
    String? name,
    String? label,
    String? description,
    String? createdAt,
    String? modifiedAt,
  }) {
    _id = id;
    _name = name;
    _label = label;
    _description = description;
    _createdAt = createdAt;
    _modifiedAt = modifiedAt;
  }

  Status.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _label = json['label'];
    _description = json['description'];
    _createdAt = json['created_at'];
    _modifiedAt = json['modified_at'];
  }
  int? _id;
  String? _name;
  String? _label;
  String? _description;
  String? _createdAt;
  String? _modifiedAt;
  Status copyWith({
    int? id,
    String? name,
    String? label,
    String? description,
    String? createdAt,
    String? modifiedAt,
  }) =>
      Status(
        id: id ?? _id,
        name: name ?? _name,
        label: label ?? _label,
        description: description ?? _description,
        createdAt: createdAt ?? _createdAt,
        modifiedAt: modifiedAt ?? _modifiedAt,
      );
  int? get id => _id;
  String? get name => _name;
  String? get label => _label;
  String? get description => _description;
  String? get createdAt => _createdAt;
  String? get modifiedAt => _modifiedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['label'] = _label;
    map['description'] = _description;
    map['created_at'] = _createdAt;
    map['modified_at'] = _modifiedAt;
    return map;
  }
}

class LoanStatus {
  LoanStatus({
    int? id,
    String? name,
    String? label,
    String? description,
    String? createdAt,
    String? modifiedAt,
  }) {
    _id = id;
    _name = name;
    _label = label;
    _description = description;
    _createdAt = createdAt;
    _modifiedAt = modifiedAt;
  }

  LoanStatus.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _label = json['label'];
    _description = json['description'];
    _createdAt = json['created_at'];
    _modifiedAt = json['modified_at'];
  }
  int? _id;
  String? _name;
  String? _label;
  String? _description;
  String? _createdAt;
  String? _modifiedAt;
  LoanStatus copyWith({
    int? id,
    String? name,
    String? label,
    String? description,
    String? createdAt,
    String? modifiedAt,
  }) =>
      LoanStatus(
        id: id ?? _id,
        name: name ?? _name,
        label: label ?? _label,
        description: description ?? _description,
        createdAt: createdAt ?? _createdAt,
        modifiedAt: modifiedAt ?? _modifiedAt,
      );
  int? get id => _id;
  String? get name => _name;
  String? get label => _label;
  String? get description => _description;
  String? get createdAt => _createdAt;
  String? get modifiedAt => _modifiedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['label'] = _label;
    map['description'] = _description;
    map['created_at'] = _createdAt;
    map['modified_at'] = _modifiedAt;
    return map;
  }
}

class ActiveAgents {
  ActiveAgents({
    String? id,
    String? userId,
    String? agentId,
    String? clusterId,
    int? statusId,
    String? acceptedAt,
    String? createdAt,
    Agent? agent,
  }) {
    _id = id;
    _userId = userId;
    _agentId = agentId;
    _clusterId = clusterId;
    _statusId = statusId;
    _acceptedAt = acceptedAt;
    _createdAt = createdAt;
    _agent = agent;
  }

  ActiveAgents.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _agentId = json['agent_id'];
    _clusterId = json['cluster_id'];
    _statusId = json['status_id'];
    _acceptedAt = json['accepted_at'];
    _createdAt = json['created_at'];
    _agent = json['agent'] != null ? Agent.fromJson(json['agent']) : null;
  }
  String? _id;
  String? _userId;
  String? _agentId;
  String? _clusterId;
  int? _statusId;
  String? _acceptedAt;
  String? _createdAt;
  Agent? _agent;
  ActiveAgents copyWith({
    String? id,
    String? userId,
    String? agentId,
    String? clusterId,
    int? statusId,
    String? acceptedAt,
    String? createdAt,
    Agent? agent,
  }) =>
      ActiveAgents(
        id: id ?? _id,
        userId: userId ?? _userId,
        agentId: agentId ?? _agentId,
        clusterId: clusterId ?? _clusterId,
        statusId: statusId ?? _statusId,
        acceptedAt: acceptedAt ?? _acceptedAt,
        createdAt: createdAt ?? _createdAt,
        agent: agent ?? _agent,
      );
  String? get id => _id;
  String? get userId => _userId;
  String? get agentId => _agentId;
  String? get clusterId => _clusterId;
  int? get statusId => _statusId;
  String? get acceptedAt => _acceptedAt;
  String? get createdAt => _createdAt;
  Agent? get agent => _agent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['agent_id'] = _agentId;
    map['cluster_id'] = _clusterId;
    map['status_id'] = _statusId;
    map['accepted_at'] = _acceptedAt;
    map['created_at'] = _createdAt;
    if (_agent != null) {
      map['agent'] = _agent?.toJson();
    }
    return map;
  }
}

// class Agent {
//   Agent({
//     String? id,
//     String? userId,
//     dynamic moniId,
//     String? eligibleLoanId,
//     String? firstName,
//     dynamic middleName,
//     String? lastName,
//     String? nickname,
//     String? birthDate,
//     String? gender,
//     String? businessName,
//     String? maritalStatus,
//     String? education,
//     String? houseAddress,
//     String? shopAddress,
//     String? lga,
//     String? city,
//     String? state,
//     dynamic country,
//     String? phoneNumber,
//     String? emailAddress,
//     String? bvn,
//     int? hasCreditHistory,
//     int? verified,
//     String? referralLink,
//     dynamic mediaUrl,
//     String? channel,
//     int? agentRepaymentRate,
//     int? bvnVerifiedAfter,
//     int? loanEnabled,
//     int? statusId,
//     String? eligibleLoanModifiedAt,
//     String? createdAt,
//     String? modifiedAt,
//     int? capAgentLoan,
//     int? loanCount,
//     RecentLoan? recentLoan,
//     bool? suspended,
//   }) {
//     _id = id;
//     _userId = userId;
//     _moniId = moniId;
//     _eligibleLoanId = eligibleLoanId;
//     _firstName = firstName;
//     _middleName = middleName;
//     _lastName = lastName;
//     _nickname = nickname;
//     _birthDate = birthDate;
//     _gender = gender;
//     _businessName = businessName;
//     _maritalStatus = maritalStatus;
//     _education = education;
//     _houseAddress = houseAddress;
//     _shopAddress = shopAddress;
//     _lga = lga;
//     _city = city;
//     _state = state;
//     _country = country;
//     _phoneNumber = phoneNumber;
//     _emailAddress = emailAddress;
//     _bvn = bvn;
//     _hasCreditHistory = hasCreditHistory;
//     _verified = verified;
//     _referralLink = referralLink;
//     _mediaUrl = mediaUrl;
//     _channel = channel;
//     _agentRepaymentRate = agentRepaymentRate;
//     _bvnVerifiedAfter = bvnVerifiedAfter;
//     _loanEnabled = loanEnabled;
//     _statusId = statusId;
//     _eligibleLoanModifiedAt = eligibleLoanModifiedAt;
//     _createdAt = createdAt;
//     _modifiedAt = modifiedAt;
//     _capAgentLoan = capAgentLoan;
//     _loanCount = loanCount;
//     _recentLoan = recentLoan;
//     _suspended = suspended;
//   }
//
//   Agent.fromJson(dynamic json) {
//     _id = json['id'];
//     _userId = json['user_id'];
//     _moniId = json['moni_id'];
//     _eligibleLoanId = json['eligible_loan_id'];
//     _firstName = json['first_name'];
//     _middleName = json['middle_name'];
//     _lastName = json['last_name'];
//     _nickname = json['nickname'];
//     _birthDate = json['birth_date'];
//     _gender = json['gender'];
//     _businessName = json['business_name'];
//     _maritalStatus = json['marital_status'];
//     _education = json['education'];
//     _houseAddress = json['house_address'];
//     _shopAddress = json['shop_address'];
//     _lga = json['lga'];
//     _city = json['city'];
//     _state = json['state'];
//     _country = json['country'];
//     _phoneNumber = json['phone_number'];
//     _emailAddress = json['email_address'];
//     _bvn = json['bvn'];
//     _hasCreditHistory = json['has_credit_history'];
//     _verified = json['verified'];
//     _referralLink = json['referral_link'];
//     _mediaUrl = json['media_url'];
//     _channel = json['channel'];
//     _agentRepaymentRate = json['agent_repayment_rate'];
//     _bvnVerifiedAfter = json['bvn_verified_after'];
//     _loanEnabled = json['loan_enabled'];
//     _statusId = json['status_id'];
//     _eligibleLoanModifiedAt = json['eligible_loan_modified_at'];
//     _createdAt = json['created_at'];
//     _modifiedAt = json['modified_at'];
//     _capAgentLoan = json['cap_agent_loan'];
//     _loanCount = json['loan_count'];
//     _recentLoan = json['recent_loan'] != null
//         ? RecentLoan.fromJson(json['recent_loan'])
//         : null;
//     _suspended = json['suspended'];
//   }
//   String? _id;
//   String? _userId;
//   dynamic _moniId;
//   String? _eligibleLoanId;
//   String? _firstName;
//   dynamic _middleName;
//   String? _lastName;
//   String? _nickname;
//   String? _birthDate;
//   String? _gender;
//   String? _businessName;
//   String? _maritalStatus;
//   String? _education;
//   String? _houseAddress;
//   String? _shopAddress;
//   String? _lga;
//   String? _city;
//   String? _state;
//   dynamic _country;
//   String? _phoneNumber;
//   String? _emailAddress;
//   String? _bvn;
//   int? _hasCreditHistory;
//   int? _verified;
//   String? _referralLink;
//   dynamic _mediaUrl;
//   String? _channel;
//   int? _agentRepaymentRate;
//   int? _bvnVerifiedAfter;
//   int? _loanEnabled;
//   int? _statusId;
//   String? _eligibleLoanModifiedAt;
//   String? _createdAt;
//   String? _modifiedAt;
//   int? _capAgentLoan;
//   int? _loanCount;
//   RecentLoan? _recentLoan;
//   bool? _suspended;
//   Agent copyWith({
//     String? id,
//     String? userId,
//     dynamic moniId,
//     String? eligibleLoanId,
//     String? firstName,
//     dynamic middleName,
//     String? lastName,
//     String? nickname,
//     String? birthDate,
//     String? gender,
//     String? businessName,
//     String? maritalStatus,
//     String? education,
//     String? houseAddress,
//     String? shopAddress,
//     String? lga,
//     String? city,
//     String? state,
//     dynamic country,
//     String? phoneNumber,
//     String? emailAddress,
//     String? bvn,
//     int? hasCreditHistory,
//     int? verified,
//     String? referralLink,
//     dynamic mediaUrl,
//     String? channel,
//     int? agentRepaymentRate,
//     int? bvnVerifiedAfter,
//     int? loanEnabled,
//     int? statusId,
//     String? eligibleLoanModifiedAt,
//     String? createdAt,
//     String? modifiedAt,
//     int? capAgentLoan,
//     int? loanCount,
//     RecentLoan? recentLoan,
//     bool? suspended,
//   }) =>
//       Agent(
//         id: id ?? _id,
//         userId: userId ?? _userId,
//         moniId: moniId ?? _moniId,
//         eligibleLoanId: eligibleLoanId ?? _eligibleLoanId,
//         firstName: firstName ?? _firstName,
//         middleName: middleName ?? _middleName,
//         lastName: lastName ?? _lastName,
//         nickname: nickname ?? _nickname,
//         birthDate: birthDate ?? _birthDate,
//         gender: gender ?? _gender,
//         businessName: businessName ?? _businessName,
//         maritalStatus: maritalStatus ?? _maritalStatus,
//         education: education ?? _education,
//         houseAddress: houseAddress ?? _houseAddress,
//         shopAddress: shopAddress ?? _shopAddress,
//         lga: lga ?? _lga,
//         city: city ?? _city,
//         state: state ?? _state,
//         country: country ?? _country,
//         phoneNumber: phoneNumber ?? _phoneNumber,
//         emailAddress: emailAddress ?? _emailAddress,
//         bvn: bvn ?? _bvn,
//         hasCreditHistory: hasCreditHistory ?? _hasCreditHistory,
//         verified: verified ?? _verified,
//         referralLink: referralLink ?? _referralLink,
//         mediaUrl: mediaUrl ?? _mediaUrl,
//         channel: channel ?? _channel,
//         agentRepaymentRate: agentRepaymentRate ?? _agentRepaymentRate,
//         bvnVerifiedAfter: bvnVerifiedAfter ?? _bvnVerifiedAfter,
//         loanEnabled: loanEnabled ?? _loanEnabled,
//         statusId: statusId ?? _statusId,
//         eligibleLoanModifiedAt:
//             eligibleLoanModifiedAt ?? _eligibleLoanModifiedAt,
//         createdAt: createdAt ?? _createdAt,
//         modifiedAt: modifiedAt ?? _modifiedAt,
//         capAgentLoan: capAgentLoan ?? _capAgentLoan,
//         loanCount: loanCount ?? _loanCount,
//         recentLoan: recentLoan ?? _recentLoan,
//         suspended: suspended ?? _suspended,
//       );
//   String? get id => _id;
//   String? get userId => _userId;
//   dynamic get moniId => _moniId;
//   String? get eligibleLoanId => _eligibleLoanId;
//   String? get firstName => _firstName;
//   dynamic get middleName => _middleName;
//   String? get lastName => _lastName;
//   String? get nickname => _nickname;
//   String? get birthDate => _birthDate;
//   String? get gender => _gender;
//   String? get businessName => _businessName;
//   String? get maritalStatus => _maritalStatus;
//   String? get education => _education;
//   String? get houseAddress => _houseAddress;
//   String? get shopAddress => _shopAddress;
//   String? get lga => _lga;
//   String? get city => _city;
//   String? get state => _state;
//   dynamic get country => _country;
//   String? get phoneNumber => _phoneNumber;
//   String? get emailAddress => _emailAddress;
//   String? get bvn => _bvn;
//   int? get hasCreditHistory => _hasCreditHistory;
//   int? get verified => _verified;
//   String? get referralLink => _referralLink;
//   dynamic get mediaUrl => _mediaUrl;
//   String? get channel => _channel;
//   int? get agentRepaymentRate => _agentRepaymentRate;
//   int? get bvnVerifiedAfter => _bvnVerifiedAfter;
//   int? get loanEnabled => _loanEnabled;
//   int? get statusId => _statusId;
//   String? get eligibleLoanModifiedAt => _eligibleLoanModifiedAt;
//   String? get createdAt => _createdAt;
//   String? get modifiedAt => _modifiedAt;
//   int? get capAgentLoan => _capAgentLoan;
//   int? get loanCount => _loanCount;
//   RecentLoan? get recentLoan => _recentLoan;
//   bool? get suspended => _suspended;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['user_id'] = _userId;
//     map['moni_id'] = _moniId;
//     map['eligible_loan_id'] = _eligibleLoanId;
//     map['first_name'] = _firstName;
//     map['middle_name'] = _middleName;
//     map['last_name'] = _lastName;
//     map['nickname'] = _nickname;
//     map['birth_date'] = _birthDate;
//     map['gender'] = _gender;
//     map['business_name'] = _businessName;
//     map['marital_status'] = _maritalStatus;
//     map['education'] = _education;
//     map['house_address'] = _houseAddress;
//     map['shop_address'] = _shopAddress;
//     map['lga'] = _lga;
//     map['city'] = _city;
//     map['state'] = _state;
//     map['country'] = _country;
//     map['phone_number'] = _phoneNumber;
//     map['email_address'] = _emailAddress;
//     map['bvn'] = _bvn;
//     map['has_credit_history'] = _hasCreditHistory;
//     map['verified'] = _verified;
//     map['referral_link'] = _referralLink;
//     map['media_url'] = _mediaUrl;
//     map['channel'] = _channel;
//     map['agent_repayment_rate'] = _agentRepaymentRate;
//     map['bvn_verified_after'] = _bvnVerifiedAfter;
//     map['loan_enabled'] = _loanEnabled;
//     map['status_id'] = _statusId;
//     map['eligible_loan_modified_at'] = _eligibleLoanModifiedAt;
//     map['created_at'] = _createdAt;
//     map['modified_at'] = _modifiedAt;
//     map['cap_agent_loan'] = _capAgentLoan;
//     map['loan_count'] = _loanCount;
//     if (_recentLoan != null) {
//       map['recent_loan'] = _recentLoan?.toJson();
//     }
//     map['suspended'] = _suspended;
//     return map;
//   }
// }

// class RecentLoan {
//   RecentLoan({
//     String? id,
//     String? agentId,
//     String? clusterId,
//     String? agentLoanId,
//     int? loanAmount,
//     String? createdAt,
//     AgentLoan? agentLoan,
//   }) {
//     _id = id;
//     _agentId = agentId;
//     _clusterId = clusterId;
//     _agentLoanId = agentLoanId;
//     _loanAmount = loanAmount;
//     _createdAt = createdAt;
//     _agentLoan = agentLoan;
//   }
//
//   RecentLoan.fromJson(dynamic json) {
//     _id = json['id'];
//     _agentId = json['agent_id'];
//     _clusterId = json['cluster_id'];
//     _agentLoanId = json['agent_loan_id'];
//     _loanAmount = json['loan_amount'];
//     _createdAt = json['created_at'];
//     _agentLoan = json['agent_loan'] != null
//         ? AgentLoan.fromJson(json['agent_loan'])
//         : null;
//   }
//   String? _id;
//   String? _agentId;
//   String? _clusterId;
//   String? _agentLoanId;
//   int? _loanAmount;
//   String? _createdAt;
//   AgentLoan? _agentLoan;
//   RecentLoan copyWith({
//     String? id,
//     String? agentId,
//     String? clusterId,
//     String? agentLoanId,
//     int? loanAmount,
//     String? createdAt,
//     AgentLoan? agentLoan,
//   }) =>
//       RecentLoan(
//         id: id ?? _id,
//         agentId: agentId ?? _agentId,
//         clusterId: clusterId ?? _clusterId,
//         agentLoanId: agentLoanId ?? _agentLoanId,
//         loanAmount: loanAmount ?? _loanAmount,
//         createdAt: createdAt ?? _createdAt,
//         agentLoan: agentLoan ?? _agentLoan,
//       );
//   String? get id => _id;
//   String? get agentId => _agentId;
//   String? get clusterId => _clusterId;
//   String? get agentLoanId => _agentLoanId;
//   int? get loanAmount => _loanAmount;
//   String? get createdAt => _createdAt;
//   AgentLoan? get agentLoan => _agentLoan;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['agent_id'] = _agentId;
//     map['cluster_id'] = _clusterId;
//     map['agent_loan_id'] = _agentLoanId;
//     map['loan_amount'] = _loanAmount;
//     map['created_at'] = _createdAt;
//     if (_agentLoan != null) {
//       map['agent_loan'] = _agentLoan?.toJson();
//     }
//     return map;
//   }
// }
//
// class AgentLoan {
//   AgentLoan({
//     String? id,
//     String? agentId,
//     String? agentCreditScoreId,
//     String? loanId,
//     String? agentCardId,
//     String? interestType,
//     double? interestValue,
//     String? loanDurationType,
//     int? loanDuration,
//     String? loanDueDate,
//     dynamic daysPastDue,
//     int? loanAmount,
//     int? loanAmountDue,
//     int? loanInterestDue,
//     dynamic loanPaymentDate,
//     dynamic loanPaymentRate,
//     int? loanAmountPaid,
//     int? penaltyOutstanding,
//     int? penaltyPaid,
//     int? principalPaid,
//     int? principalOutstanding,
//     int? interestPaid,
//     int? interestOutstanding,
//     int? penaltyAmount,
//     LoanStatus? loanStatus,
//     int? isMax,
//     int? statusId,
//     int? acceptTerms,
//     String? createdAt,
//     String? modifiedAt,
//     Status? status,
//   }) {
//     _id = id;
//     _agentId = agentId;
//     _agentCreditScoreId = agentCreditScoreId;
//     _loanId = loanId;
//     _agentCardId = agentCardId;
//     _interestType = interestType;
//     _interestValue = interestValue;
//     _loanDurationType = loanDurationType;
//     _loanDuration = loanDuration;
//     _loanDueDate = loanDueDate;
//     _daysPastDue = daysPastDue;
//     _loanAmount = loanAmount;
//     _loanAmountDue = loanAmountDue;
//     _loanInterestDue = loanInterestDue;
//     _loanPaymentDate = loanPaymentDate;
//     _loanPaymentRate = loanPaymentRate;
//     _loanAmountPaid = loanAmountPaid;
//     _penaltyOutstanding = penaltyOutstanding;
//     _penaltyPaid = penaltyPaid;
//     _principalPaid = principalPaid;
//     _principalOutstanding = principalOutstanding;
//     _interestPaid = interestPaid;
//     _interestOutstanding = interestOutstanding;
//     _penaltyAmount = penaltyAmount;
//     _loanStatus = loanStatus;
//     _isMax = isMax;
//     _statusId = statusId;
//     _acceptTerms = acceptTerms;
//     _createdAt = createdAt;
//     _modifiedAt = modifiedAt;
//     _status = status;
//   }
//
//   AgentLoan.fromJson(dynamic json) {
//     _id = json['id'];
//     _agentId = json['agent_id'];
//     _agentCreditScoreId = json['agent_credit_score_id'];
//     _loanId = json['loan_id'];
//     _agentCardId = json['agent_card_id'];
//     _interestType = json['interest_type'];
//     _interestValue = json['interest_value'];
//     _loanDurationType = json['loan_duration_type'];
//     _loanDuration = json['loan_duration'];
//     _loanDueDate = json['loan_due_date'];
//     _daysPastDue = json['days_past_due'];
//     _loanAmount = json['loan_amount'];
//     _loanAmountDue = json['loan_amount_due'];
//     _loanInterestDue = json['loan_interest_due'];
//     _loanPaymentDate = json['loan_payment_date'];
//     _loanPaymentRate = json['loan_payment_rate'];
//     _loanAmountPaid = json['loan_amount_paid'];
//     _penaltyOutstanding = json['penalty_outstanding'];
//     _penaltyPaid = json['penalty_paid'];
//     _principalPaid = json['principal_paid'];
//     _principalOutstanding = json['principal_outstanding'];
//     _interestPaid = json['interest_paid'];
//     _interestOutstanding = json['interest_outstanding'];
//     _penaltyAmount = json['penalty_amount'];
//     _loanStatus = json['loan_status'] != null
//         ? LoanStatus.fromJson(json['loan_status'])
//         : null;
//     _isMax = json['is_max'];
//     _statusId = json['status_id'];
//     _acceptTerms = json['accept_terms'];
//     _createdAt = json['created_at'];
//     _modifiedAt = json['modified_at'];
//     _status = json['status'] != null ? Status.fromJson(json['status']) : null;
//   }
//   String? _id;
//   String? _agentId;
//   String? _agentCreditScoreId;
//   String? _loanId;
//   String? _agentCardId;
//   String? _interestType;
//   double? _interestValue;
//   String? _loanDurationType;
//   int? _loanDuration;
//   String? _loanDueDate;
//   dynamic _daysPastDue;
//   int? _loanAmount;
//   int? _loanAmountDue;
//   int? _loanInterestDue;
//   dynamic _loanPaymentDate;
//   dynamic _loanPaymentRate;
//   int? _loanAmountPaid;
//   int? _penaltyOutstanding;
//   int? _penaltyPaid;
//   int? _principalPaid;
//   int? _principalOutstanding;
//   int? _interestPaid;
//   int? _interestOutstanding;
//   int? _penaltyAmount;
//   LoanStatus? _loanStatus;
//   int? _isMax;
//   int? _statusId;
//   int? _acceptTerms;
//   String? _createdAt;
//   String? _modifiedAt;
//   Status? _status;
//   AgentLoan copyWith({
//     String? id,
//     String? agentId,
//     String? agentCreditScoreId,
//     String? loanId,
//     String? agentCardId,
//     String? interestType,
//     double? interestValue,
//     String? loanDurationType,
//     int? loanDuration,
//     String? loanDueDate,
//     dynamic daysPastDue,
//     int? loanAmount,
//     int? loanAmountDue,
//     int? loanInterestDue,
//     dynamic loanPaymentDate,
//     dynamic loanPaymentRate,
//     int? loanAmountPaid,
//     int? penaltyOutstanding,
//     int? penaltyPaid,
//     int? principalPaid,
//     int? principalOutstanding,
//     int? interestPaid,
//     int? interestOutstanding,
//     int? penaltyAmount,
//     LoanStatus? loanStatus,
//     int? isMax,
//     int? statusId,
//     int? acceptTerms,
//     String? createdAt,
//     String? modifiedAt,
//     Status? status,
//   }) =>
//       AgentLoan(
//         id: id ?? _id,
//         agentId: agentId ?? _agentId,
//         agentCreditScoreId: agentCreditScoreId ?? _agentCreditScoreId,
//         loanId: loanId ?? _loanId,
//         agentCardId: agentCardId ?? _agentCardId,
//         interestType: interestType ?? _interestType,
//         interestValue: interestValue ?? _interestValue,
//         loanDurationType: loanDurationType ?? _loanDurationType,
//         loanDuration: loanDuration ?? _loanDuration,
//         loanDueDate: loanDueDate ?? _loanDueDate,
//         daysPastDue: daysPastDue ?? _daysPastDue,
//         loanAmount: loanAmount ?? _loanAmount,
//         loanAmountDue: loanAmountDue ?? _loanAmountDue,
//         loanInterestDue: loanInterestDue ?? _loanInterestDue,
//         loanPaymentDate: loanPaymentDate ?? _loanPaymentDate,
//         loanPaymentRate: loanPaymentRate ?? _loanPaymentRate,
//         loanAmountPaid: loanAmountPaid ?? _loanAmountPaid,
//         penaltyOutstanding: penaltyOutstanding ?? _penaltyOutstanding,
//         penaltyPaid: penaltyPaid ?? _penaltyPaid,
//         principalPaid: principalPaid ?? _principalPaid,
//         principalOutstanding: principalOutstanding ?? _principalOutstanding,
//         interestPaid: interestPaid ?? _interestPaid,
//         interestOutstanding: interestOutstanding ?? _interestOutstanding,
//         penaltyAmount: penaltyAmount ?? _penaltyAmount,
//         loanStatus: loanStatus ?? _loanStatus,
//         isMax: isMax ?? _isMax,
//         statusId: statusId ?? _statusId,
//         acceptTerms: acceptTerms ?? _acceptTerms,
//         createdAt: createdAt ?? _createdAt,
//         modifiedAt: modifiedAt ?? _modifiedAt,
//         status: status ?? _status,
//       );
//   String? get id => _id;
//   String? get agentId => _agentId;
//   String? get agentCreditScoreId => _agentCreditScoreId;
//   String? get loanId => _loanId;
//   String? get agentCardId => _agentCardId;
//   String? get interestType => _interestType;
//   double? get interestValue => _interestValue;
//   String? get loanDurationType => _loanDurationType;
//   int? get loanDuration => _loanDuration;
//   String? get loanDueDate => _loanDueDate;
//   dynamic get daysPastDue => _daysPastDue;
//   int? get loanAmount => _loanAmount;
//   int? get loanAmountDue => _loanAmountDue;
//   int? get loanInterestDue => _loanInterestDue;
//   dynamic get loanPaymentDate => _loanPaymentDate;
//   dynamic get loanPaymentRate => _loanPaymentRate;
//   int? get loanAmountPaid => _loanAmountPaid;
//   int? get penaltyOutstanding => _penaltyOutstanding;
//   int? get penaltyPaid => _penaltyPaid;
//   int? get principalPaid => _principalPaid;
//   int? get principalOutstanding => _principalOutstanding;
//   int? get interestPaid => _interestPaid;
//   int? get interestOutstanding => _interestOutstanding;
//   int? get penaltyAmount => _penaltyAmount;
//   LoanStatus? get loanStatus => _loanStatus;
//   int? get isMax => _isMax;
//   int? get statusId => _statusId;
//   int? get acceptTerms => _acceptTerms;
//   String? get createdAt => _createdAt;
//   String? get modifiedAt => _modifiedAt;
//   Status? get status => _status;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['agent_id'] = _agentId;
//     map['agent_credit_score_id'] = _agentCreditScoreId;
//     map['loan_id'] = _loanId;
//     map['agent_card_id'] = _agentCardId;
//     map['interest_type'] = _interestType;
//     map['interest_value'] = _interestValue;
//     map['loan_duration_type'] = _loanDurationType;
//     map['loan_duration'] = _loanDuration;
//     map['loan_due_date'] = _loanDueDate;
//     map['days_past_due'] = _daysPastDue;
//     map['loan_amount'] = _loanAmount;
//     map['loan_amount_due'] = _loanAmountDue;
//     map['loan_interest_due'] = _loanInterestDue;
//     map['loan_payment_date'] = _loanPaymentDate;
//     map['loan_payment_rate'] = _loanPaymentRate;
//     map['loan_amount_paid'] = _loanAmountPaid;
//     map['penalty_outstanding'] = _penaltyOutstanding;
//     map['penalty_paid'] = _penaltyPaid;
//     map['principal_paid'] = _principalPaid;
//     map['principal_outstanding'] = _principalOutstanding;
//     map['interest_paid'] = _interestPaid;
//     map['interest_outstanding'] = _interestOutstanding;
//     map['penalty_amount'] = _penaltyAmount;
//     if (_loanStatus != null) {
//       map['loan_status'] = _loanStatus?.toJson();
//     }
//     map['is_max'] = _isMax;
//     map['status_id'] = _statusId;
//     map['accept_terms'] = _acceptTerms;
//     map['created_at'] = _createdAt;
//     map['modified_at'] = _modifiedAt;
//     if (_status != null) {
//       map['status'] = _status?.toJson();
//     }
//     return map;
//   }
// }
//
// class Status {
//   Status({
//     int? id,
//     String? name,
//     String? label,
//     String? description,
//     String? createdAt,
//     String? modifiedAt,
//   }) {
//     _id = id;
//     _name = name;
//     _label = label;
//     _description = description;
//     _createdAt = createdAt;
//     _modifiedAt = modifiedAt;
//   }
//
//   Status.fromJson(dynamic json) {
//     _id = json['id'];
//     _name = json['name'];
//     _label = json['label'];
//     _description = json['description'];
//     _createdAt = json['created_at'];
//     _modifiedAt = json['modified_at'];
//   }
//   int? _id;
//   String? _name;
//   String? _label;
//   String? _description;
//   String? _createdAt;
//   String? _modifiedAt;
//   Status copyWith({
//     int? id,
//     String? name,
//     String? label,
//     String? description,
//     String? createdAt,
//     String? modifiedAt,
//   }) =>
//       Status(
//         id: id ?? _id,
//         name: name ?? _name,
//         label: label ?? _label,
//         description: description ?? _description,
//         createdAt: createdAt ?? _createdAt,
//         modifiedAt: modifiedAt ?? _modifiedAt,
//       );
//   int? get id => _id;
//   String? get name => _name;
//   String? get label => _label;
//   String? get description => _description;
//   String? get createdAt => _createdAt;
//   String? get modifiedAt => _modifiedAt;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['name'] = _name;
//     map['label'] = _label;
//     map['description'] = _description;
//     map['created_at'] = _createdAt;
//     map['modified_at'] = _modifiedAt;
//     return map;
//   }
// }
//
// class LoanStatus {
//   LoanStatus({
//     int? id,
//     String? name,
//     String? label,
//     String? description,
//     String? createdAt,
//     String? modifiedAt,
//   }) {
//     _id = id;
//     _name = name;
//     _label = label;
//     _description = description;
//     _createdAt = createdAt;
//     _modifiedAt = modifiedAt;
//   }
//
//   LoanStatus.fromJson(dynamic json) {
//     _id = json['id'];
//     _name = json['name'];
//     _label = json['label'];
//     _description = json['description'];
//     _createdAt = json['created_at'];
//     _modifiedAt = json['modified_at'];
//   }
//   int? _id;
//   String? _name;
//   String? _label;
//   String? _description;
//   String? _createdAt;
//   String? _modifiedAt;
//   LoanStatus copyWith({
//     int? id,
//     String? name,
//     String? label,
//     String? description,
//     String? createdAt,
//     String? modifiedAt,
//   }) =>
//       LoanStatus(
//         id: id ?? _id,
//         name: name ?? _name,
//         label: label ?? _label,
//         description: description ?? _description,
//         createdAt: createdAt ?? _createdAt,
//         modifiedAt: modifiedAt ?? _modifiedAt,
//       );
//   int? get id => _id;
//   String? get name => _name;
//   String? get label => _label;
//   String? get description => _description;
//   String? get createdAt => _createdAt;
//   String? get modifiedAt => _modifiedAt;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['name'] = _name;
//     map['label'] = _label;
//     map['description'] = _description;
//     map['created_at'] = _createdAt;
//     map['modified_at'] = _modifiedAt;
//     return map;
//   }
// }
