// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017 The AmlBitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef AMLBITCOIN_QT_AMLBITCOINADDRESSVALIDATOR_H
#define AMLBITCOIN_QT_AMLBITCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class AmlBitcoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit AmlBitcoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** AmlBitcoin address widget validator, checks for a valid AmlBitcoin address.
 */
class AmlBitcoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit AmlBitcoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // AMLBITCOIN_QT_AMLBITCOINADDRESSVALIDATOR_H
