﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Service.Document;

using Microsoft.Service.Reports;

pageextension 5049 "SD Service Lines" extends "Service Lines"
{
    layout
    {
        addafter("Contract No.")
        {
            field("Service Transaction Type Code"; Rec."Service Transaction Type Code")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the code for a service transaction type.';
                Visible = EnableServTransType;
                ShowMandatory = Rec."Applicable For Serv. Decl.";
            }
            field("Applicable For Serv. Decl."; Rec."Applicable For Serv. Decl.")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies whether an item or resource is applicable for a service declaration.';
                Visible = UseServDeclaration;
            }
        }
    }

    var
        UseServDeclaration: Boolean;
        EnableServTransType: Boolean;

    trigger OnOpenPage()
    var
        ServiceDeclarationMgt: Codeunit "Service Declaration Mgt.";
    begin
        UseServDeclaration := ServiceDeclarationMgt.IsFeatureEnabled();
        EnableServTransType := ServiceDeclarationMgt.IsServTransTypeEnabled();
    end;
}
