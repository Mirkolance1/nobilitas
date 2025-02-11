// Copyright (c) 2011-2014 The Nobilitas Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NOBILITAS_QT_NOBILITASADDRESSVALIDATOR_H
#define NOBILITAS_QT_NOBILITASADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class NobilitasAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit NobilitasAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Nobilitas address widget validator, checks for a valid nobilitas address.
 */
class NobilitasAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit NobilitasAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // NOBILITAS_QT_NOBILITASADDRESSVALIDATOR_H
